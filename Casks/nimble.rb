cask "nimble" do
  version "0.2.1"
  sha256 "a650ea2c324293793f38b4b35152e381fe339a68325bd19e5cf1f8d0f1de46cc"

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
