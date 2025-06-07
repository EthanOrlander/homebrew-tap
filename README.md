# Homebrew Tap for Mentat

This is the Homebrew tap for [Mentat](https://github.com/Ethan Orlander/mentat), an AI development assistant CLI tool.

## Installation

```bash
brew tap Ethan Orlander/tap
brew install mentat
```

## Development

To test the formula locally:

```bash
brew install --build-from-source --verbose --debug Formula/mentat.rb
```

## Updating

When a new version is released:

1. Update the `url` and `version` in Formula/mentat.rb
2. Update the `sha256` hash (get it from the release assets)
3. Commit and push the changes

```bash
# Get SHA256 of the release tarball
shasum -a 256 mentat-vX.Y.Z-universal-apple-darwin.tar.gz
```
