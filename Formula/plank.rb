class Plank < Formula
  desc "Programmable execution engine for modern CI/CD"
  homepage "https://plankhq.io"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.1/plank-platform-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "94bdbe0a979e6529ca3fd0c37e70060bd93f5fdd7950129c109d0e6108368b45"
    else
      odie "Plank's current release does not publish an Intel macOS archive yet"
    end
  end

  on_linux do
    odie "Plank's current release does not publish Linux archives yet"
  end

  def install
    bin.install "plank"
    bin.install "plank-local"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plank version")
  end
end
