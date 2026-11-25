cask "reachly" do
  version "1.0.1"
  sha256 "0a57bf2a095fdf3403b9eecd1727e08b70e579853f41e2500017977151baeba6"

  url "https://github.com/Edwardrem/Reachly/releases/download/v#{version}/Reachly-#{version}.dmg"
  name "Reachly"
  desc "Terminal, file transfer and AI assistant for remote machines"
  homepage "https://edwardrem.github.io/Reachly/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Reachly.app"

  zap trash: [
    "~/Library/Application Support/Reachly",
    "~/Library/Preferences/io.github.edwardrem.reachly.plist",
  ]

  caveats <<~EOS
    Reachly is not notarized yet, so macOS blocks the first launch. Open it once,
    then click Open Anyway in System Settings > Privacy & Security, or run:
      xattr -dr com.apple.quarantine #{appdir}/Reachly.app
  EOS
end
