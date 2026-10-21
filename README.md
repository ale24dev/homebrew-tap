# ale24dev Homebrew Tap

Personal Homebrew tap.

## Install

```sh
brew install --cask ale24dev/tap/emulator-bar
```

Or tap first:

```sh
brew tap ale24dev/tap
brew install --cask emulator-bar
```

## Casks

| Cask | Description |
|------|-------------|
| [`emulator-bar`](Casks/emulator-bar.rb) | [Emulator Bar](https://github.com/ale24dev/emulator-bar): macOS menu-bar app to control Android emulators and iOS simulators (Apple Silicon). |

Emulator Bar is unsigned. On first launch right-click the app and choose
**Open**, or run:

```sh
xattr -dr com.apple.quarantine "/Applications/Emulator Bar.app"
```
