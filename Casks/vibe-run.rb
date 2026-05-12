cask "vibe-run" do
  version "0.3.0"
  sha256 "d41b3ac4426b840cf9cf2a8a9a69510b342e1cabbde5a9673604f00b28583fbd"

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
