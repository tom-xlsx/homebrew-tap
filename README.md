# tom-xlsx/tap

Homebrew tap for my tools.

## Legible

A Markdown reader for macOS (Apple Silicon, macOS 14 or later). Source and
documentation: <https://github.com/tom-xlsx/legible> (GPLv3).

```bash
brew install --cask tom-xlsx/tap/legible
```

Legible is not notarised, so macOS may refuse to open it the first time. Dismiss
the dialog, open System Settings › Privacy & Security, scroll down and click
"Open Anyway". Then open Legible once so its Quick Look extension is registered.

Later on:

```bash
brew upgrade --cask legible          # update
brew uninstall --cask --zap legible  # remove, including settings
```
