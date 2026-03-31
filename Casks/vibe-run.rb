cask "vibe-run" do
  version "0.2.1"
  sha256 "55d6c0f0685e5a78528054e9296403e7d744da3dd0b4da73d460d012ea15e312"

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
