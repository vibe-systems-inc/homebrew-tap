cask "vibe-chat" do
  version "0.0.4"
  sha256 "1aed0803d394195df6734a4bd2b3cd2656195a09d6f1e151b4a5c5adc88cfe9c"

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
