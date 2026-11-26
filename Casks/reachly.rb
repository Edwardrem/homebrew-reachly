cask "reachly" do
  version "1.1.0"
  sha256 "77c4b22e3f24ca10c62d99c8f1333351a1cc52480ac818def29ce9b523bb8c63"

  url "https://github.com/Edwardrem/Reachly/releases/download/v#{version}/Reachly-#{version}.dmg"
  name "Reachly"
  desc "Terminal, file transfer and AI assistant for remote machines"
  homepage "https://edwardrem.github.io/Reachly/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

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
