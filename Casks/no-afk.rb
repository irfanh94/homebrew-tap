cask "no-afk" do
  version "0.1.0"
  sha256 "022a922dc6d31b287879d881521ce86a32f0e8d40bb7574cce9c1658089602c3"

  url "https://github.com/irfanh94/no-afk/releases/download/v#{version}/No.AFK_#{version}_universal.dmg"
  name "No AFK"
  desc "Menu bar app that keeps your Mac awake"
  homepage "https://github.com/irfanh94/no-afk"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships a Tauri updater and updates itself, so Homebrew should not try to
  # manage upgrades for it.
  auto_updates true

  # Matches minimumSystemVersion in tauri.conf.json.
  depends_on macos: ">= :big_sur"

  app "No AFK.app"

  # Paths confirmed to exist after running the app, rather than guessed from the
  # bundle identifier. No LaunchAgent is listed: the login item is registered only if
  # the user enables it, and Homebrew's zap runs regardless.
  zap trash: [
    "~/Library/Application Support/dev.irfanhodzic.no-afk",
    "~/Library/Caches/dev.irfanhodzic.no-afk",
    "~/Library/WebKit/dev.irfanhodzic.no-afk",
  ]
end
