# Plank Homebrew Tap

Install Plank and its local runtime with:

```sh
brew install plankhq/tap/plank
```

The formula installs both `plank` and `plank-local` from the matching GitHub
Release archive in this public repository. Use the tap-qualified name because
Homebrew Core also has an unrelated formula named `plank`.

Release archives and checksums are mirrored from the private build repository
by the `plank-platform` release workflow. The tap contains distribution
metadata and public release assets; it is not a second build source.
