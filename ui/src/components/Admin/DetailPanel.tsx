import { useEffect, useRef, useState } from "react";
import { useAtomValue } from "jotai";
import {
  Box,
  Flex,
  Text,
  ScrollArea,
  Switch,
  Badge,
  Button,
  Modal,
  CopyButton,
  Code,
} from "@mantine/core";
import { Eye, Save, MapPin, Download, Copy, Check } from "lucide-react";
import { GameBuildAtom } from "../../reducers/atoms";
import { apiPreviewLocal, apiTeleport } from "../../Api/Api";
import type { InteriorDef, InteriorState } from "../../types/types";
import { VariantControl } from "./VariantControl";
import classes from "./style.module.css";

export interface Draft {
  active: boolean;
  variants: Record<string, string>;
}

export function buildDraft(
  def: InteriorDef | null,
  state: InteriorState | null,
): Draft {
  if (!def) return { active: false, variants: {} };
  const variants: Record<string, string> = {};
  for (const k of Object.keys(def.variants)) {
    const v = state?.[k] ?? def.defaults?.[k];
    if (v !== undefined) variants[k] = v as string;
  }
  return { active: state?.active ?? false, variants };
}

function generateLua(def: InteriorDef, draft: Draft): string {
  const id = def.id;
  const lines: string[] = [`-- ${def.label}`];
  if (draft.active) {
    lines.push(`exports['av_ipls']:loadLocal('${id}')`);
    for (const group of Object.keys(draft.variants).sort()) {
      const option = draft.variants[group];
      if (option) {
        lines.push(
          `exports['av_ipls']:setVariantLocal('${id}', '${group}', '${option}')`,
        );
      }
    }
  } else {
    lines.push(`exports['av_ipls']:removeLocal('${id}')`);
  }
  return lines.join("\n");
}

export function DetailPanel({
  def,
  serverState,
  onSave,
}: {
  def: InteriorDef | null;
  serverState: InteriorState | null;
  onSave: (id: string, draft: Draft) => void;
}) {
  const gameBuild = useAtomValue(GameBuildAtom);
  const [draft, setDraft] = useState<Draft>(() => buildDraft(def, serverState));
  const [exportOpen, setExportOpen] = useState(false);
  const [saving, setSaving] = useState(false);
  // Track whether the user has made unsaved local edits
  const isDirtyRef = useRef(false);

  // Reset draft (and dirty flag) whenever a different interior is selected
  useEffect(() => {
    setDraft(buildDraft(def, serverState));
    isDirtyRef.current = false;
  }, [def?.id]);

  // Also rebuild when the server sends a state update — but only if the user
  // hasn't made local edits yet (so we don't clobber work in progress)
  useEffect(() => {
    if (!isDirtyRef.current) {
      setDraft(buildDraft(def, serverState));
    }
  }, [serverState]);

  if (!def) {
    return (
      <Flex className={classes.detailPanel} align="center" justify="center">
        <Text c="dimmed" size="sm">
          Select an interior
        </Text>
      </Flex>
    );
  }

  const variantKeys = Object.keys(def.variants).sort();
  const hasCoords = def.coords != null;
  const buildOk = !def.min_build || gameBuild >= def.min_build;
  const luaCode = generateLua(def, draft);

  const setActive = (v: boolean) => {
    isDirtyRef.current = true;
    setDraft((d) => ({ ...d, active: v }));
  };
  const setVariant = (group: string, option: string) => {
    isDirtyRef.current = true;
    setDraft((d) => ({ ...d, variants: { ...d.variants, [group]: option } }));
  };

  const handlePreview = () =>
    apiPreviewLocal(def.id, draft.active, draft.variants);
  const handleSave = () => {
    if (saving) return;
    isDirtyRef.current = false;
    setSaving(true);
    onSave(def.id, draft);
    setTimeout(() => setSaving(false), 500);
  };
  const handleTeleport = () => {
    if (def.coords) apiTeleport(def.coords);
  };

  return (
    <>
      <Modal
        opened={exportOpen}
        onClose={() => setExportOpen(false)}
        lockScroll={false}
        centered
        withinPortal
        title={
          <Text fw={600} size="sm">
            Export — {def.label}
          </Text>
        }
        size="lg"
        styles={{
          content: {
            background: "var(--bg-panel)",
            border: "1px solid var(--border)",
          },
          header: {
            background: "var(--bg-panel)",
            borderBottom: "1px solid var(--border)",
          },
          title: { color: "var(--text)" },
          close: { color: "var(--text-dim)" },
        }}
      >
        <Code
          block
          style={{
            background: "var(--bg-base)",
            color: "var(--text)",
            border: "1px solid var(--border)",
            fontSize: 12,
            userSelect: "all",
            cursor: "text",
            whiteSpace: "pre",
            display: "block",
            padding: "12px 14px",
            borderRadius: 6,
            marginBottom: 12,
          }}
        >
          {luaCode}
        </Code>
      </Modal>
      <Box className={classes.detailPanel}>
        <Box className={classes.detailHeader}>
          <Flex align="center" gap={8}>
            <Text className={classes.detailTitle}>{def.label}</Text>
            {def.min_build && (
              <Badge size="xs" variant="light" color={buildOk ? "gray" : "red"}>
                build {def.min_build}+
              </Badge>
            )}
          </Flex>
          <Text c="dimmed" size="xs">
            {def.category}
          </Text>
          {!buildOk && (
            <Text size="xs" c="red" mt={2}>
              Server build {gameBuild} is below the required {def.min_build}
            </Text>
          )}
        </Box>
        <ScrollArea className={classes.detailScroll} scrollbarSize={4}>
          <Flex
            className={classes.variantRow}
            justify="space-between"
            align="center"
            mb={4}
          >
            <Text className={classes.variantLabel} fw={600} c="var(--accent)">
              Active
            </Text>
            <Switch
              checked={draft.active}
              size="sm"
              color="var(--accent)"
              disabled={!buildOk}
              onChange={(e) => setActive(e.currentTarget.checked)}
            />
          </Flex>
          {variantKeys.length === 0 ? (
            <Text c="dimmed" size="xs" mt={10}>
              No configurable options
            </Text>
          ) : (
            variantKeys.map((vname) => (
              <VariantControl
                key={vname}
                name={vname}
                def={def.variants[vname]}
                value={draft.variants[vname]}
                onChange={setVariant}
                disabled={!buildOk}
              />
            ))
          )}
        </ScrollArea>
        <Flex
          className={classes.detailFooter}
          gap={8}
          justify="flex-end"
          align="center"
        >
          <Button
            size="xs"
            variant="subtle"
            color="gray"
            leftSection={<Download size={13} />}
            onClick={() => setExportOpen(true)}
          >
            Export
          </Button>
          <Button
            size="xs"
            variant="light"
            color="cyan"
            leftSection={<Eye size={13} />}
            disabled={!buildOk}
            onClick={handlePreview}
          >
            Preview
          </Button>
          <Button
            size="xs"
            variant="light"
            color="green"
            leftSection={<Save size={13} />}
            disabled={!buildOk || saving}
            onClick={handleSave}
          >
            {saving ? "Saved" : "Save"}
          </Button>
          <Button
            size="xs"
            variant="light"
            color="yellow"
            leftSection={<MapPin size={13} />}
            disabled={!hasCoords}
            onClick={handleTeleport}
          >
            Teleport
          </Button>
        </Flex>
      </Box>
    </>
  );
}
