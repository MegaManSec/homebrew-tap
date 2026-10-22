cask "magic-switch" do
  version "2.29.0"
  sha256 "ec25d9c2464a486476c2ced26f8ab43e4ca263d80206a668612b2b0629a6acfb"

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
