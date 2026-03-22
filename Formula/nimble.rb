class Nimble < Formula
  desc "A keyboard-driven command palette for your desktop"
  homepage "https://github.com/surdy/nimble"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surdy/nimble/releases/download/v#{version}/Nimble_0.1.0_aarch64.dmg"
      sha256 "aaa518fcdd4d545ef3449360e588682cab61f3831078b9bcf0c09d87cc0d2bef"
    else
      url "https://github.com/surdy/nimble/releases/download/v#{version}/Nimble_0.1.0_aarch64.dmg"
      sha256 "aaa518fcdd4d545ef3449360e588682cab61f3831078b9bcf0c09d87cc0d2bef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/surdy/nimble/releases/download/v#{version}/nimble.flatpak"
      sha256 "fd1b169db1c651550d5029c9bca876bb626068d78636e2e16a753ac808fda752"
    end
  end

  def install
    bin.install "nimble"
  end

  test do
    assert_predicate bin/"nimble", :exist?
  end
end
