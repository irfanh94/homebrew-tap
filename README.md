# homebrew-tap

Homebrew tap for my macOS apps.

```bash
brew tap irfanh94/tap
```

Homebrew requires third-party taps to be trusted explicitly before it will load a cask
from them, so there is one extra step compared with `homebrew/cask`. Trusting a single
cask is narrower than trusting the whole tap, and is enough:

```bash
brew trust --cask irfanh94/tap/no-afk
```

## Casks

### [No AFK](https://github.com/irfanh94/no-afk)

Menu bar app that keeps your Mac awake — and shows you which other apps are keeping it
awake too.

```bash
brew install --cask irfanh94/tap/no-afk
```

Signed with a Developer ID, notarised and stapled, universal (Apple Silicon and Intel).
The app updates itself, so the cask is marked `auto_updates` and Homebrew will not try
to manage upgrades for it.

---

These live in a personal tap rather than `homebrew/cask` because that repository
requires a project to be notable before it will accept a cask — 225 stars, 90 forks or
90 watchers for a self-submission, and a repository at least 30 days old. A personal
tap has no such requirement and installs exactly the same way, just with the tap name
in front.
