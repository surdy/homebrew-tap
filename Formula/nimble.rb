class Nimble < Formula
  desc "A keyboard-driven command palette for your desktop"
  homepage "https://github.com/surdy/nimble"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surdy/nimble/releases/download/v#{version}/nimble-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM_SHA256"
    else
      url "https://github.com/surdy/nimble/releases/download/v#{version}/nimble-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/surdy/nimble/releases/download/v#{version}/nimble-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_SHA256"
    end
  end

  def install
    bin.install "nimble"
  end

  test do
    assert_predicate bin/"nimble", :exist?
  end
end
