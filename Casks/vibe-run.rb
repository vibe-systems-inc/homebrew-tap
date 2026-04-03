cask "vibe-run" do
  version "0.2.2"
  sha256 "4242aa7736d8d2b437570a5ebb364eaf80121ac832c5dca14fca607f9a3a36de"

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
