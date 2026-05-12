cask "vibe-run" do
  version "0.3.1"
  sha256 "32d273a6ba44daab0e60ab43c9cb3d0982fc217c264ed11dccc9398885726ee7"

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
