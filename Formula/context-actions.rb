class ContextActions < Formula
  desc "A cross-platform command-driven desktop launcher"
  homepage "https://github.com/surdy/contexts-launcher"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surdy/contexts-launcher/releases/download/v#{version}/context-actions-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM_SHA256"
    else
      url "https://github.com/surdy/contexts-launcher/releases/download/v#{version}/context-actions-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/surdy/contexts-launcher/releases/download/v#{version}/context-actions-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_SHA256"
    end
  end

  def install
    bin.install "context-actions"
  end

  test do
    assert_predicate bin/"context-actions", :exist?
  end
end
