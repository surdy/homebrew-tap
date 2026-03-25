cask "nimble" do
  version "0.2.0"
  sha256 "117d3ba9ffc81b35acbeee9792481fa3f37ae09c7c44d2ace1ee5c7a1efbb370"

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
