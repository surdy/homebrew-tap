cask "nimble" do
  version "0.4.0"
  sha256 "2063728d1621785035a9849a25ce9436777f1a52e68083aa153c56b237609053"

  url "https://github.com/surdy/nimble/releases/download/v#{version}/Nimble_#{version}_aarch64.dmg",
      verified: "github.com/surdy/nimble/"
  name "Nimble"
  desc "A keyboard-driven command palette for your desktop"
  homepage "https://github.com/surdy/nimble"

  app "Nimble.app"

  zap trash: [
    "~/Library/Application Support/Nimble",
    "~/Library/Preferences/com.nimble.app.plist",
  ]
end
