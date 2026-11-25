# Homebrew tap for Reachly

**Every machine within reach.** [Reachly](https://edwardrem.github.io/Reachly/) is a free, open-source Mac app to reach any machine from one place: terminal, SFTP, port forwarding, serial consoles and an AI assistant that works on your machines under your rules.

## Install

```sh
brew install --cask edwardrem/reachly/reachly
```

Reachly is not notarized yet, so macOS blocks the first launch. Open it once, then click **Open Anyway** in System Settings › Privacy & Security, or run:

```sh
xattr -dr com.apple.quarantine /Applications/Reachly.app
```

## Update and remove

```sh
brew upgrade --cask reachly
brew uninstall --cask reachly          # keeps your hosts, chats and settings
brew uninstall --zap --cask reachly    # also deletes them
```

The cask is updated automatically by the [Reachly release workflow](https://github.com/Edwardrem/Reachly/blob/main/.github/workflows/release.yml) for each stable release.
