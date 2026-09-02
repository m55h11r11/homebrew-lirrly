# Lirrly Homebrew tap

Install [Lirrly](https://lirrly.com) — voice dictation that pastes clean text into
any macOS app — with Homebrew:

```sh
brew install --cask m55h11r11/lirrly/lirrly
```

Upgrades come from Lirrly's built-in updater (the cask is marked `auto_updates`),
so `brew upgrade` will not fight the app. To update via Homebrew anyway:

```sh
brew upgrade --cask m55h11r11/lirrly/lirrly
```

Uninstall:

```sh
brew uninstall --cask lirrly          # remove the app
brew uninstall --zap --cask lirrly    # also remove settings and local history
```

Requires an Apple Silicon Mac on macOS 12 (Monterey) or later.
Source: [m55h11r11/wispralt](https://github.com/m55h11r11/wispralt) (AGPL-3.0).
