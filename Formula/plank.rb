class Plank < Formula
  desc "Plank - Agent first CI/CD and Workflow Orchestration"
  homepage "https://plankhq.io"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.4/plank-local-0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "8c0b14c5ed964f2e7c2a4df98b094904fe629f4f3c34eff7850334cd0852706d"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.4/plank-local-0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "3438fed3226a3fe8783419c6551c9c9b8667f6feaddea7ab53e00cf0bc02b086"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.4/plank-local-0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76cff3393891d5b37f16c5d73973e1fe4e6b08d8fbc28ed7a1b8c1f668c62272"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.4/plank-local-0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55b27d74eae95c430221c1ac5bd412d586a85e77da8afab33003898a05f943bb"
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
