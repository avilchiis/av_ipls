import { atom } from 'jotai';
import type { Registry, ServerState } from '../types/types';

export const Lang = atom<any>({});
export const RegistryAtom = atom<Registry>({});
export const ServerStateAtom = atom<ServerState>({});
export const SelectedCategoryAtom = atom<string | null>(null);
export const SelectedInteriorAtom = atom<string | null>(null);
export const GameBuildAtom = atom<number>(9999);
