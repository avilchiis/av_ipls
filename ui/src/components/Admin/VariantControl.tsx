import { Flex, Text, Switch, Select } from "@mantine/core";
import type { VariantDef } from "../../types/types";
import classes from "./style.module.css";

export function VariantControl({
  name,
  def,
  value,
  onChange,
  disabled,
}: {
  name: string;
  def: VariantDef;
  value: string | undefined;
  onChange: (group: string, option: string) => void;
  disabled: boolean;
}) {
  if (def._type === "toggle") {
    return (
      <Flex
        className={classes.variantRow}
        justify="space-between"
        align="center"
      >
        <Text className={classes.variantLabel}>{name}</Text>
        <Switch
          checked={value === "on"}
          size="sm"
          color="var(--accent)"
          disabled={disabled}
          onChange={(e) =>
            onChange(name, e.currentTarget.checked ? "on" : "off")
          }
        />
      </Flex>
    );
  }

  // select, select_nullable, stages, color — all rendered as a dropdown.
  // For color variants the option keys are human-readable names; numeric
  // indices are a Lua-side detail, never shown in the UI.
  const data = Object.keys(def.options)
    .sort()
    .map((k) => ({ value: k, label: k }));

  return (
    <Flex className={classes.variantRow} justify="space-between" align="center">
      <Text className={classes.variantLabel}>{name}</Text>
      <Select
        data={data}
        value={value ?? null}
        onChange={(v) => {
          if (v) onChange(name, v);
        }}
        size="xs"
        w={160}
        clearable={def._nullable}
        disabled={disabled}
        classNames={{
          input: classes.selectInput,
          dropdown: classes.selectDropdown,
          option: classes.selectOption,
        }}
      />
    </Flex>
  );
}
