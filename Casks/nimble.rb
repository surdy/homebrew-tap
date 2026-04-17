cask "nimble" do
  version "1.0.0"
  sha256 "2938389ad0ec59c9f0aaa4b8f80aa7d03beaf86f7dc91bb7998368b6324d54d3"

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
