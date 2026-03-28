cask "vibe-chat" do
  version "0.0.5"
  sha256 "0a876cf7201b95cd0fa3bf10ec25379030340d93e0e847b192d3d97e2c6be374"

  url "https://download.vibesystems.com/downloads/vibe-chat/darwin/arm64/Vibe%20Chat-darwin-arm64-#{version}.zip"
  name "Vibe Chat"
  desc "Desktop chat application for AI coding agents"
  homepage "https://github.com/vibe-systems-inc/vibe-chat"

  livecheck do
    url "https://download.vibesystems.com/downloads/vibe-chat/darwin/arm64/"
    regex(/Vibe%20Chat-darwin-arm64-(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :monterey"

  app "Vibe Chat.app"

  zap trash: [
    "~/Library/Application Support/VibeChat",
    "~/Library/Preferences/com.electron.vibe-chat.plist",
    "~/Library/Saved Application State/com.electron.vibe-chat.savedState",
  ]
end
