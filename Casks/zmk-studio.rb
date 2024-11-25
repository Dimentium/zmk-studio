cask "zmk-studio" do
  version "0.2.3"
  sha256 :no_check
  arch arm: "aarch64", intel: "x64"

  livecheck do
    url "https://github.com/zmkfirmware/zmk-studio/tags"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
    
  url "https://github.com/zmkfirmware/zmk-studio/releases/download/v#{version}/zmk-studio_#{version}_#{arch}.dmg"
  
  name "zmk-studio.app"
  desc "ZMK-Studio - keyboard layout editor"
  homepage "https://github.com/zmkfirmware/zmk-studio"

  depends_on macos: ">= :monterey"

  app "zmk-studio.app"

  zap trash: [
    "~/Library/Caches/dev.zmk.studio",
    "~/Library/Saved Application State/dev.zmk.studio.savedState",
    "~/Library/WebKit/dev.zmk.studio",
    ]
end
