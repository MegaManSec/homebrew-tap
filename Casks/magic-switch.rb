cask "magic-switch" do
  version "2.28.3"
  sha256 "6474aadd1be8fa06c0565d5bea9167bfbb2d3e35ffcc12e5357bb282b2ebab6c"

  url "https://github.com/MegaManSec/magic-switch/releases/download/v#{version}/app.zip"
  name "Magic Switch"
  desc "Switch Bluetooth keyboards, mice and trackpads between computers"
  homepage "https://github.com/MegaManSec/magic-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Magic Switch.app"

  uninstall quit: "com.megamansec.magic-switch"

  zap trash: [
    "~/Library/Application Scripts/com.megamansec.magic-switch",
    "~/Library/Containers/com.megamansec.magic-switch",
  ]
end
