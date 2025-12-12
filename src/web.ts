import { WebPlugin } from '@capacitor/core';

import type { ManifestPlaceholderCapPlugin } from './definitions';

export class ManifestPlaceholderCapWeb extends WebPlugin implements ManifestPlaceholderCapPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
