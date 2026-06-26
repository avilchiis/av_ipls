# av_ipls

GTA V interior IPL loader for FiveM. Handles IPL loading, entity set configuration, and per-client overrides across all DLC interiors. Includes a built-in admin NUI panel for live configuration.

---

## Admin Panel

Open the panel in-game with the configured command (default: `admin:ipl`). Requires membership in one of the groups defined in `Config.AdminGroups`.

The panel lets you browse interiors by DLC, configure variants (style, lighting, decor, etc.), preview changes locally before saving, and export ready-to-use Lua snippets.

---

## Client Exports

All exports are **client-side only** and affect only the calling client. They work through a local override layer — they never touch the server state and do not sync to other players. Use them to set up interiors for specific scenarios (missions, cutscenes, job instances, etc.) on a per-player basis.

> **Note:** `intId` is the interior's registry key (e.g. `'nightclubs'`, `'arcade'`). Use the Export button in the admin panel to get the correct IDs and variant keys for any interior.

---

### `loadLocal(intId)`

Marks the interior as active for this client and loads its IPLs. Does not change server state.

**Returns:** `true` on success, `false` if `intId` is not in the registry.

```lua
exports['av_ipls']:loadLocal('nightclubs')
```

**Use cases:**

- Activating an interior at the start of a mission instance
- Showing an interior to one player without affecting others
- Loading a job-specific location (e.g. a biker clubhouse) when a player begins that job

---

### `removeLocal(intId)`

Deactivates the interior for this client, removes IPLs, and clears all local variant overrides for it.

**Returns:** `true` on success, `false` if `intId` is not in the registry.

```lua
exports['av_ipls']:removeLocal('nightclubs')
```

**Use cases:**

- Cleaning up an interior when a mission or job ends
- Unloading a location after a cutscene finishes
- Resetting to the server-defined state without calling `resetLocal`

---

### `setVariantLocal(intId, group, optionKey)`

Sets a single variant option (entity set) on the interior for this client only. Activates the entity set immediately and refreshes the interior — no preview step needed.

**Returns:** `true` on success, `false` if the interior or variant group is not found.

| Parameter   | Type   | Description                                     |
| ----------- | ------ | ----------------------------------------------- |
| `intId`     | string | Registry key of the interior                    |
| `group`     | string | Variant group name (e.g. `'Style'`, `'Lasers'`) |
| `optionKey` | string | Option key within that group (e.g. `'glam'`)    |

```lua
exports['av_ipls']:loadLocal('nightclubs')
exports['av_ipls']:setVariantLocal('nightclubs', 'Style',    'glam')
exports['av_ipls']:setVariantLocal('nightclubs', 'Lasers',   'green')
exports['av_ipls']:setVariantLocal('nightclubs', 'Droplets', 'purple')
exports['av_ipls']:setVariantLocal('nightclubs', 'Neons',    'white')
exports['av_ipls']:setVariantLocal('nightclubs', 'Bands',    'cyan')
exports['av_ipls']:setVariantLocal('nightclubs', 'Podium',   'glam')
exports['av_ipls']:setVariantLocal('nightclubs', 'Name',     'gefangnis')
exports['av_ipls']:setVariantLocal('nightclubs', 'Posters',  'dixon')
```

**Use cases:**

- Setting a specific nightclub theme for a DJ event script
- Configuring a casino interior differently per heist phase
- Personalizing a player's apartment or office decor within a job

---

### `clearVariantLocal(intId, group)`

Clears the local override for a single variant group, reverting it to the server-defined value (or the interior's default if no server value exists). The revert is applied immediately.

**Returns:** `true` on success, `false` if `intId` is not in the registry.

```lua
exports['av_ipls']:clearVariantLocal('nightclubs', 'Style')
```

**Use cases:**

- Reverting one option after a cutscene without resetting the whole interior
- Letting the server-configured style take over after a player-specific phase ends

---

### `resetLocal(intId)`

Clears **all** local overrides for an interior and re-applies the current server state. Equivalent to the player rejoining with a clean slate.

**Returns:** `true` on success, `false` if `intId` is not in the registry.

```lua
exports['av_ipls']:resetLocal('nightclubs')
```

**Use cases:**

- Fully cleaning up after a mission without needing to know which variants were changed
- Syncing a player back to the global server configuration after a private event

---

### `isActive(intId)`

Returns whether the interior is currently active for this client (merges local overrides with server state).

**Returns:** `boolean`

```lua
if exports['av_ipls']:isActive('nightclubs') then
    -- interior is loaded and active
end
```

---

### `getState(intId)`

Returns the merged state for an interior (server state + local overrides). This is what `applyState` uses internally.

**Returns:** `table | nil`

```lua
local state = exports['av_ipls']:getState('nightclubs')
-- state.active    -> boolean
-- state.Style     -> 'glam'
-- state.Lasers    -> 'green'
```

---

### `getServerState(intId)`

Returns the raw server-synced state for an interior, without local overrides applied.

**Returns:** `table | nil`

```lua
local sv = exports['av_ipls']:getServerState('nightclubs')
```

---

### `getLocalOverrides(intId)`

Returns only the local override table for an interior, or `nil` if none exist.

**Returns:** `table | nil`

```lua
local ov = exports['av_ipls']:getLocalOverrides('nightclubs')
```

---

### `getRegistry()`

Returns the full interior registry. Each entry contains the interior definition including `id`, `label`, `category`, `coords`, `variants`, `defaults`, and `ipls`.

**Returns:** `table`

```lua
local registry = exports['av_ipls']:getRegistry()
for id, def in pairs(registry) do
    print(id, def.label, def.category)
end
```

---

### `sync()`

Requests a full state sync from the server. Triggers `requestSync`, which causes the server to re-send the full `activeState` to this client. Useful after a resource restart or if local state drifts.

```lua
exports['av_ipls']:sync()
```

---

## Full Example — Mission Script

```lua
-- On mission start: load the nightclub with a custom theme for this player only
local function setupNightclub()
    exports['av_ipls']:loadLocal('nightclubs')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Style',    'glam')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Podium',   'glam')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Name',     'maisonette')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Lasers',   'purple')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Neons',    'purple')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Droplets', 'purple')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Bands',    'cyan')
    exports['av_ipls']:setVariantLocal('nightclubs', 'Posters',  'solomun')
end

-- On mission end: revert everything back to server state
local function cleanupNightclub()
    exports['av_ipls']:resetLocal('nightclubs')
end

RegisterCommand('startmission', function()
    setupNightclub()
    -- ... rest of mission logic
end, false)

RegisterCommand('endmission', function()
    cleanupNightclub()
end, false)
```

---

## Configuration

```lua
-- config/config.lua
Config.Debug        = true
Config.AdminCommand = "admin:ipl"
Config.AdminGroups  = { "group.admin", "group.god", "group.superadmin" }
```

Admin access requires membership in one of the groups listed in `Config.AdminGroups`

---

## Credits

- **[Bob74](https://github.com/Bob74/bob74_ipl)** — The interior entity set definitions, IPL lists, and coordinates used in this resource were referenced from [bob74_ipl](https://github.com/Bob74/bob74_ipl). An invaluable open reference for GTA V interior modding on FiveM.
