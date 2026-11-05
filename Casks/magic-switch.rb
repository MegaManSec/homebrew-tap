cask "magic-switch" do
  version "2.30.2"
  sha256 "9f74489ec11cd1c0e685aec4f8da948f0c4ca9b66d4d024e968953ad11b6697f"

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
