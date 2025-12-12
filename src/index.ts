import { registerPlugin } from '@capacitor/core';

import type { ManifestPlaceholderCapPlugin } from './definitions';

const ManifestPlaceholderCap = registerPlugin<ManifestPlaceholderCapPlugin>('ManifestPlaceholderCap', {
  web: () => import('./web').then((m) => new m.ManifestPlaceholderCapWeb()),
});

export * from './definitions';
export { ManifestPlaceholderCap };
