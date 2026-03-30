cask "vibe-run" do
  version "0.2.0"
  sha256 "4428d6ca2f55008a5f3ab94ea71224bee154cf49e356b286ea2139a31ce3af3e"

  url "https://download.vibesystems.com/downloads/vibe-run/darwin/arm64/Vibe%20Run-darwin-arm64-#{version}.dmg"
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
