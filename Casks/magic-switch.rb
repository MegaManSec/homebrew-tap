cask "magic-switch" do
  version "2.29.1"
  sha256 "7036a93bdb550387e453ea7e225c936e8f704f8e32346ba8a2ee39837a05642b"

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
