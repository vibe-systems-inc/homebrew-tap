cask "vibe-run" do
  version "0.2.0"
  sha256 "7a8cc32e59925d85ddb94a6fa55a58fa4bb89b8ecf870182db22582371b90ec0"

  url "https://download.vibesystems.com/downloads/vibe-run/darwin/arm64/Vibe%20Run-#{version}-arm64.dmg"
  name "Vibe Run"
  desc "Desktop environment for AI agents"
  homepage "https://vibe.run"

  livecheck do
    url "https://download.vibesystems.com/downloads/vibe-run/darwin/arm64/"
    regex(/Vibe%20Run-darwin-arm64-(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Vibe Run.app"

  zap trash: [
    "~/Library/Application Support/VibeRun",
    "~/Library/Preferences/run.vibe.app.plist",
    "~/Library/Saved Application State/run.vibe.app.savedState",
  ]
end
