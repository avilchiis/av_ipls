import { useEffect, useMemo, useState } from "react";
import { useAtom, useAtomValue, useSetAtom } from "jotai";
import {
  Box,
  Flex,
  Text,
  ScrollArea,
  Transition,
  Tooltip,
} from "@mantine/core";
import { X, Ghost, MapPin } from "lucide-react";
import { isEnvBrowser, useNuiEvent } from "../../hooks/useNuiEvents";
import {
  RegistryAtom,
  ServerStateAtom,
  SelectedCategoryAtom,
  SelectedInteriorAtom,
  GameBuildAtom,
} from "../../reducers/atoms";
import {
  mockAdminData,
  apiClose,
  apiGhostMode,
  apiSave,
  apiLocate,
} from "../../Api/Api";
import type { AdminData, InteriorState, ServerState } from "../../types/types";
import { DetailPanel } from "./DetailPanel";
import type { Draft } from "./DetailPanel";
import classes from "./style.module.css";

export const Admin = () => {
  const [registry, setRegistry] = useAtom(RegistryAtom);
  const [serverState, setServerState] = useAtom(ServerStateAtom);
  const [selectedCategory, setSelectedCategory] = useAtom(SelectedCategoryAtom);
  const [selectedInteriorId, setSelectedInteriorId] =
    useAtom(SelectedInteriorAtom);
  const setGameBuild = useSetAtom(GameBuildAtom);
  const gameBuild = useAtomValue(GameBuildAtom);
  const [visible, setVisible] = useState(false);
  const [ghost, setGhost] = useState(false);

  useEffect(() => {
    if (!isEnvBrowser()) return;
    setRegistry(mockAdminData.registry);
    setServerState(mockAdminData.state);
    setGameBuild(mockAdminData.gameBuild ?? 9999);
    setVisible(true);
  }, []);

  useNuiEvent<AdminData>("admin", (data) => {
    setRegistry(data.registry);
    setServerState(data.state);
    setGameBuild(data.gameBuild ?? 9999);
    setGhost(false);
    setVisible(true);
    if (data.currentInteriorId && data.registry[data.currentInteriorId]) {
      setSelectedCategory(data.registry[data.currentInteriorId].category);
      setSelectedInteriorId(data.currentInteriorId);
    } else {
      setSelectedCategory(null);
      setSelectedInteriorId(null);
    }
  });

  useNuiEvent<{ id: string; state: InteriorState }>(
    "syncInterior",
    ({ id, state }) => {
      setServerState((prev) => ({ ...prev, [id]: state }));
    },
  );

  useNuiEvent<ServerState>("syncState", (state) => {
    setServerState(state);
  });

  useNuiEvent("restoreFocus", () => {
    setGhost(false);
  });

  const categories = useMemo(
    () => [...new Set(Object.values(registry).map((d) => d.category))].sort(),
    [registry],
  );

  const interiors = useMemo(
    () =>
      selectedCategory
        ? Object.values(registry)
            .filter((d) => d.category === selectedCategory)
            .sort((a, b) => a.label.localeCompare(b.label))
        : [],
    [registry, selectedCategory],
  );

  const selectedDef = selectedInteriorId
    ? (registry[selectedInteriorId] ?? null)
    : null;
  const selectedState = selectedInteriorId
    ? (serverState[selectedInteriorId] ?? null)
    : null;

  const handleSelectCategory = (cat: string) => {
    setSelectedCategory(cat);
    setSelectedInteriorId(null);
  };

  const handleSave = (id: string, draft: Draft) => {
    setServerState((prev) => ({
      ...prev,
      [id]: { active: draft.active, ...draft.variants } as InteriorState,
    }));
    apiSave(id, draft.active, draft.variants);
  };

  const handleClose = () => {
    setVisible(false);
    setGhost(false);
    apiClose();
  };

  const handleGhost = () => {
    setGhost(true);
    apiGhostMode();
  };

  const handleLocate = async () => {
    const result = await apiLocate();
    if (result?.interiorId && registry[result.interiorId]) {
      setSelectedCategory(registry[result.interiorId].category);
      setSelectedInteriorId(result.interiorId);
    }
  };

  return (
    <Transition
      mounted={visible}
      transition="fade"
      duration={300}
      timingFunction="ease"
    >
      {(styles) => (
        <Box className={classes.container} style={styles}>
          <Box
            className={classes.panel}
            style={{
              opacity: ghost ? 0.25 : 1,
              pointerEvents: ghost ? "none" : undefined,
              transition: "opacity 0.2s ease",
            }}
          >
            <Flex
              className={classes.header}
              align="center"
              justify="space-between"
              px={14}
              py={10}
            >
              <Flex align="center" gap={8}>
                <Text className={classes.headerTitle}>IPL Admin</Text>
                <Text fz="xs" c="var(--text-dim)">
                  build {gameBuild}
                </Text>
              </Flex>
              <Flex align="center" gap={6}>
                <Tooltip
                  label="Locate current interior"
                  bg="var(--tooltip)"
                  c="var(--text)"
                  position="bottom"
                  withArrow
                  fz="xs"
                >
                  <Box className={classes.closeBtn} onClick={handleLocate}>
                    <MapPin size={15} />
                  </Box>
                </Tooltip>
                <Tooltip
                  label="Ghost mode [Press H to restore]"
                  bg="var(--tooltip)"
                  c="var(--text)"
                  position="bottom"
                  withArrow
                  fz="xs"
                >
                  <Box
                    className={classes.closeBtn}
                    onClick={handleGhost}
                    style={{ color: ghost ? "var(--accent)" : undefined }}
                  >
                    <Ghost size={15} />
                  </Box>
                </Tooltip>
                <Box className={classes.closeBtn} onClick={handleClose}>
                  <X size={16} />
                </Box>
              </Flex>
            </Flex>
            <Flex style={{ height: "calc(100% - 44px)" }}>
              <Box className={classes.categoryPanel}>
                <Text className={classes.columnLabel}>DLC</Text>
                <ScrollArea style={{ flex: 1 }} scrollbarSize={4} mb="xs">
                  {categories.map((cat) => {
                    const isActive = cat === selectedCategory;
                    return (
                      <Box
                        key={cat}
                        className={`${classes.categoryItem} ${isActive ? classes.categoryItemActive : ""}`}
                        onClick={() => handleSelectCategory(cat)}
                      >
                        <Text size="xs" truncate>
                          {cat}
                        </Text>
                      </Box>
                    );
                  })}
                </ScrollArea>
              </Box>
              <Box className={classes.interiorPanel}>
                <Text className={classes.columnLabel}>Interiors</Text>
                <ScrollArea style={{ flex: 1 }} scrollbarSize={4}>
                  {interiors.length === 0 ? (
                    <Text c="dimmed" size="xs" p={10}>
                      Select a DLC
                    </Text>
                  ) : (
                    interiors.map((def) => {
                      const isActive = def.id === selectedInteriorId;
                      const isOn = serverState[def.id]?.active === true;
                      const buildOk =
                        !def.min_build || gameBuild >= def.min_build;
                      return (
                        <Flex
                          key={def.id}
                          className={`${classes.interiorItem} ${isActive ? classes.interiorItemActive : ""} ${!buildOk ? classes.interiorItemLocked : ""}`}
                          align="center"
                          gap={8}
                          onClick={() => setSelectedInteriorId(def.id)}
                        >
                          <Box
                            className={`${classes.activeDot} ${isOn ? classes.activeDotOn : ""}`}
                          />
                          <Text size="xs" truncate style={{ flex: 1 }}>
                            {def.label}
                          </Text>
                          {!buildOk && (
                            <Text size="xs" c="red" style={{ flexShrink: 0 }}>
                              ⚠
                            </Text>
                          )}
                        </Flex>
                      );
                    })
                  )}
                </ScrollArea>
              </Box>
              <DetailPanel
                def={selectedDef}
                serverState={selectedState}
                onSave={handleSave}
              />
            </Flex>
          </Box>
        </Box>
      )}
    </Transition>
  );
};
