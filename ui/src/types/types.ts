export interface SelectType {
  value: string;
  label: string;
}

interface ModalOptions {
  name?: string;
  type: string;
  image?: string;
  width?: number;
  height?: number;
  title?: string;
  default?: string | number | boolean | string[];
  icon?: string;
  style?: React.CSSProperties;
  searchable?: boolean;
  description?: string;
  options?: SelectType[];
  size?: string;
  color?: string;
  disabled?: boolean;
  asterisk?: boolean;
  min?: number;
  decimal?: boolean;
  negative?: boolean;
  zero?: boolean;
  isMoney?: boolean;
}

export interface ModalType {
  state: boolean;
  info?: {
    size?: string;
    title?: string;
    options: ModalOptions[];
    button?: string;
    extraData?: any;
  };
  callback?: (data: any) => void;
}

export type VariantType = "select" | "select_nullable" | "toggle" | "stages" | "color";

export interface VariantDef {
  _type: VariantType;
  _nullable: boolean;
  /** For color type with a fixed entity set (e.g. lower_walls_default) */
  entity_set?: string;
  /** For color type that follows another variant's chosen entity set */
  _target?: string;
  /** select/toggle/stages: string values; color: numeric indices */
  options: Record<string, string | number>;
}

export interface InteriorDef {
  id: string;
  label: string;
  category: string;
  coords: { x: number; y: number; z: number } | null;
  interior_id: number | Record<string, number> | null;
  variants: Record<string, VariantDef>;
  defaults: Record<string, string>;
  min_build?: number;
}

export interface InteriorState {
  active: boolean;
  [key: string]: string | boolean | null | undefined;
}

export type Registry = Record<string, InteriorDef>;
export type ServerState = Record<string, InteriorState>;

export interface AdminData {
  registry: Registry;
  state: ServerState;
  gameBuild?: number;
}
