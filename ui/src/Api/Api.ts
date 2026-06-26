import type { AdminData } from "../types/types";
import { isEnvBrowser, fetchNui } from "../hooks/useNuiEvents";

export const mockAdminData: AdminData = {
  registry: {
    clubhouse1: {
      id: "clubhouse1",
      label: "Clubhouse 1",
      category: "Bikers",
      coords: { x: 1107.04, y: -3157.399, z: -37.5186 },
      interior_id: 246273,
      variants: {
        Walls: {
          _type: "select",
          _nullable: false,
          options: { brick: "walls_01", plain: "walls_02" },
        },
        Mural: {
          _type: "select",
          _nullable: false,
          options: {
            rideFree: "mural_01",
            mods: "mural_02",
            brave: "mural_03",
            fist: "mural_04",
            forest: "mural_05",
            rideForever: "mural_07",
            heart: "mural_08",
            route68: "mural_09",
          },
        },
        GunLocker: {
          _type: "toggle",
          _nullable: false,
          options: { on: "gun_locker", off: "no_gun_locker" },
        },
        ModBooth: {
          _type: "toggle",
          _nullable: false,
          options: { on: "mod_booth", off: "no_mod_booth" },
        },
      },
      defaults: { Walls: "plain", Mural: "rideFree" },
    },
    clubhouse2: {
      id: "clubhouse2",
      label: "Clubhouse 2",
      category: "Bikers",
      coords: { x: 998.4809, y: -3164.711, z: -38.9073 },
      interior_id: 246529,
      variants: {
        Walls: {
          _type: "select",
          _nullable: false,
          options: { brick: "walls_01", plain: "walls_02" },
        },
        WallsColor: {
          _type: "color",
          _nullable: false,
          _target: "Walls",
          options: {
            greenAndGray: 1,
            multicolor: 2,
            orangeAndGray: 3,
            blue: 4,
            lightBlueAndSable: 5,
            greenAndRed: 6,
            yellowAndGray: 7,
            red: 8,
            fuchsiaAndGray: 9,
          },
        },
        LowerWalls: {
          _type: "color",
          _nullable: false,
          entity_set: "lower_walls_default",
          options: {
            greenAndGray: 1,
            multicolor: 2,
            orangeAndGray: 3,
            blue: 4,
            lightBlueAndSable: 5,
            greenAndRed: 6,
            yellowAndGray: 7,
            red: 8,
            fuchsiaAndGray: 9,
          },
        },
        Mural: {
          _type: "select",
          _nullable: false,
          options: {
            death1: "mural_01",
            cityColor1: "mural_02",
            death2: "mural_03",
            cityColor2: "mural_04",
            graffitis: "mural_05",
            cityColor3: "mural_06",
            cityColor4: "mural_07",
            cityBlack: "mural_08",
            death3: "mural_09",
          },
        },
        Furnitures: {
          _type: "select",
          _nullable: false,
          options: { A: "furnishings_01", B: "furnishings_02" },
        },
        FurnituresColor: {
          _type: "color",
          _nullable: false,
          _target: "Furnitures",
          options: {
            turquoise: 0,
            darkBrown: 1,
            brown: 2,
            brown2: 4,
            gray: 5,
            red: 6,
            darkGray: 7,
            black: 8,
            red2: 9,
          },
        },
        Decoration: {
          _type: "select",
          _nullable: false,
          options: { A: "decorative_01", B: "decorative_02" },
        },
        GunLocker: {
          _type: "toggle",
          _nullable: false,
          options: { on: "gun_locker", off: "no_gun_locker" },
        },
        ModBooth: {
          _type: "toggle",
          _nullable: false,
          options: { on: "mod_booth", off: "no_mod_booth" },
        },
      },
      defaults: {
        Walls: "brick",
        WallsColor: "greenAndGray",
        LowerWalls: "greenAndGray",
        Mural: "death3",
        Furnitures: "A",
        FurnituresColor: "darkBrown",
        Decoration: "A",
        GunLocker: "off",
        ModBooth: "off",
      },
    },
    cocaine: {
      id: "cocaine",
      label: "Cocaine Lockup",
      category: "Bikers",
      coords: null,
      interior_id: 246785,
      variants: {
        Security: {
          _type: "toggle",
          _nullable: false,
          options: { on: "cocaine_security", off: "cocaine_no_security" },
        },
        Style: {
          _type: "select",
          _nullable: false,
          options: {
            basic: "cocaine_style_basic",
            upgrade: "cocaine_style_upgrade",
          },
        },
      },
      defaults: { Security: "off", Style: "basic" },
    },
    nightclubs: {
      id: "nightclubs",
      label: "Nightclubs",
      category: "After Hours",
      coords: null,
      interior_id: 271617,
      variants: {
        Name: {
          _type: "select",
          _nullable: false,
          options: {
            galaxy: "Int01_ba_clubname_01",
            studio: "Int01_ba_clubname_02",
            omega: "Int01_ba_clubname_03",
            technologie: "Int01_ba_clubname_04",
            maisonette: "Int01_ba_clubname_06",
            tony: "Int01_ba_clubname_07",
          },
        },
        Style: {
          _type: "select",
          _nullable: false,
          options: {
            trad: "Int01_ba_Style01",
            edgy: "Int01_ba_Style02",
            glam: "Int01_ba_Style03",
          },
        },
        Podium: {
          _type: "select",
          _nullable: false,
          options: {
            trad: "Int01_ba_style01_podium",
            edgy: "Int01_ba_style02_podium",
            glam: "Int01_ba_style03_podium",
          },
        },
        Turntables: {
          _type: "select",
          _nullable: false,
          options: {
            style01: "Int01_ba_dj01",
            style02: "Int01_ba_dj02",
            style03: "Int01_ba_dj03",
            style04: "Int01_ba_dj04",
          },
        },
        Bands: {
          _type: "select",
          _nullable: false,
          options: {
            yellow: "DJ_01_Lights_03",
            green: "DJ_02_Lights_03",
            white: "DJ_03_Lights_03",
            cyan: "DJ_04_Lights_03",
          },
        },
        Lasers: {
          _type: "select",
          _nullable: false,
          options: {
            yellow: "DJ_01_Lights_04",
            green: "DJ_02_Lights_04",
            white: "DJ_03_Lights_04",
            purple: "DJ_04_Lights_04",
          },
        },
      },
      defaults: {
        Name: "galaxy",
        Style: "edgy",
        Podium: "edgy",
        Turntables: "style01",
        Bands: "cyan",
      },
    },
    facility: {
      id: "facility",
      label: "Facility",
      category: "The Doomsday Heist",
      coords: null,
      interior_id: 269313,
      variants: {
        Decals: {
          _type: "select",
          _nullable: false,
          options: {
            style01: "set_int_02_decal_01",
            style02: "set_int_02_decal_02",
            style03: "set_int_02_decal_03",
            style04: "set_int_02_decal_04",
            style05: "set_int_02_decal_05",
          },
        },
        Lounge: {
          _type: "select",
          _nullable: false,
          options: {
            utility: "set_int_02_lounge1",
            prestige: "set_int_02_lounge2",
            premier: "set_int_02_lounge3",
          },
        },
        Sleeping: {
          _type: "select_nullable",
          _nullable: true,
          options: {
            none: "set_int_02_no_sleep",
            utility: "set_int_02_sleep",
            prestige: "set_int_02_sleep2",
            premier: "set_int_02_sleep3",
          },
        },
        Security: {
          _type: "toggle",
          _nullable: false,
          options: { on: "set_int_02_security", off: "set_int_02_no_security" },
        },
        Cannon: {
          _type: "toggle",
          _nullable: false,
          options: { on: "set_int_02_cannon", off: "set_int_02_no_cannon" },
        },
      },
      defaults: {
        Decals: "style01",
        Lounge: "premier",
        Sleeping: "premier",
        Security: "on",
        Cannon: "on",
      },
    },
    arcade: {
      id: "arcade",
      label: "Arcade",
      category: "The Diamond Casino",
      min_build: 2060,
      coords: { x: 2732.0, y: -380.0, z: -50.0 },
      interior_id: 278273,
      variants: {
        Ceiling: {
          _type: "select",
          _nullable: false,
          options: {
            flat: "entity_set_arcade_set_ceiling_flat",
            mirror: "entity_set_arcade_set_ceiling_mirror",
            beams: "entity_set_arcade_set_ceiling_beams",
          },
        },
        Mural: {
          _type: "select",
          _nullable: false,
          options: {
            edgy: "entity_set_mural_option_01",
            stripes: "entity_set_mural_option_02",
            kawaii: "entity_set_mural_option_03",
            forever: "entity_set_mural_option_05",
            wireframed: "entity_set_mural_option_06",
          },
        },
        Floor: {
          _type: "select",
          _nullable: false,
          options: {
            proper: "entity_set_floor_option_01",
            rainbow: "entity_set_floor_option_03",
            lab: "entity_set_floor_option_04",
            intergalactic: "entity_set_floor_option_05",
          },
        },
      },
      defaults: { Ceiling: "flat", Mural: "forever", Floor: "proper" },
    },
    submarine: {
      id: "submarine",
      label: "Submarine",
      category: "Cayo Perico",
      min_build: 2189,
      coords: { x: 1560.0, y: 400.0, z: -50.0 },
      interior_id: 281345,
      variants: {
        Workshop: {
          _type: "select",
          _nullable: false,
          options: { brig: "entity_set_brig", workshop: "entity_set_weapons" },
        },
        Lights: {
          _type: "toggle",
          _nullable: false,
          options: {
            on: "entity_set_hatch_lights_on",
            off: "entity_set_hatch_lights_off",
          },
        },
        Details: {
          _type: "select",
          _nullable: false,
          options: {
            bomb: "entity_set_demolition",
            torch: "entity_set_acetylene",
            cutter: "entity_set_plasma",
            fingerprint: "entity_set_fingerprint",
          },
        },
      },
      defaults: { Workshop: "brig", Lights: "off" },
    },
    security_office1: {
      id: "security_office1",
      label: "Office 1 (Maze Bank)",
      category: "The Contract",
      min_build: 2545,
      coords: null,
      interior_id: null,
      variants: {},
      defaults: {},
    },
    security_office2: {
      id: "security_office2",
      label: "Office 2",
      category: "The Contract",
      min_build: 2545,
      coords: null,
      interior_id: null,
      variants: {},
      defaults: {},
    },
    base: {
      id: "base",
      label: "Base",
      category: "Los Santos Drug Wars",
      min_build: 2802,
      coords: null,
      interior_id: null,
      variants: {},
      defaults: {},
    },
  },
  gameBuild: 9999,
  state: {
    clubhouse1: { active: false, Walls: "plain", Mural: "rideFree" },
    clubhouse2: {
      active: true,
      Walls: "brick",
      WallsColor: "greenAndGray",
      LowerWalls: "greenAndGray",
      Mural: "death3",
      Furnitures: "A",
      FurnituresColor: "darkBrown",
      Decoration: "A",
      GunLocker: "off",
      ModBooth: "off",
    },
    cocaine: { active: false },
    nightclubs: {
      active: true,
      Name: "galaxy",
      Style: "edgy",
      Podium: "edgy",
      Turntables: "style01",
      Bands: "cyan",
    },
    facility: {
      active: false,
      Decals: "style01",
      Lounge: "premier",
      Sleeping: "premier",
      Security: "on",
      Cannon: "on",
    },
    arcade: {
      active: false,
      Ceiling: "flat",
      Mural: "forever",
      Floor: "proper",
    },
    submarine: { active: false, Workshop: "brig", Lights: "off" },
    security_office1: { active: false },
    security_office2: { active: false },
    base: { active: false },
  },
};

export const apiPreviewLocal = async (
  id: string,
  active: boolean,
  variants: Record<string, string>,
): Promise<void> => {
  if (isEnvBrowser()) return;
  await fetchNui("av_ipls", "previewLocal", { id, active, variants });
};

export const apiSave = async (
  id: string,
  active: boolean,
  variants: Record<string, string>,
): Promise<void> => {
  if (isEnvBrowser()) return;
  await fetchNui("av_ipls", "batchUpdate", {
    payload: [{ id, active, variants }],
  });
};

export const apiTeleport = async (coords: {
  x: number;
  y: number;
  z: number;
}): Promise<void> => {
  if (isEnvBrowser()) return;
  await fetchNui("av_ipls", "teleportToCoords", coords);
};

export const apiClose = async (): Promise<void> => {
  if (isEnvBrowser()) return;
  await fetchNui("av_ipls", "closeMenu", {});
};

export const apiGhostMode = async (): Promise<void> => {
  if (isEnvBrowser()) return;
  await fetchNui("av_ipls", "ghostMode", {});
};
