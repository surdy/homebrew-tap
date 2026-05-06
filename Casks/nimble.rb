cask "nimble" do
  version "1.2.0"
  sha256 "6188df75745c601c260312cd7e86cd268b32b4a7a0914a8fec76b441785ba791"

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
