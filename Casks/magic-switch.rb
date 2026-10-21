cask "magic-switch" do
  version "2.28.2"
  sha256 "f8a2b7a684f64d4f8769f0b3edbabd39825b72131f7f7061e1930f2dbe19fa9d"

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
