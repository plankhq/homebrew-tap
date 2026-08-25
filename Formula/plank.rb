class Plank < Formula
  desc "Programmable execution engine for modern CI/CD"
  homepage "https://plankhq.io"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "c36572ef9805c4861010eee7806fd5a4d8c3aa1ce7e8548ef67a6b69be3a7755"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "c7333beccee4429d340315a82fb74fab3711de1a684969384dacb425e7821dcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fe5985a984dea225764e3cd3c1905914d641b719a94b81568a7a1fb4697550d"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b81a1b61533ed140e7aac139e7e21b96976bbf2435ed4ed6cdf918028b1de8c2"
    end
  end

  def install
    bin.install "plank"
    bin.install "plank-tower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plank version")
  end
end
