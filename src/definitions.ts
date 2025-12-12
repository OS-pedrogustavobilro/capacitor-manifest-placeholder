export interface ManifestPlaceholderCapPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
