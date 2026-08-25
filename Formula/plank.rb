class Plank < Formula
  desc "Plank - Agent first CI/CD and Workflow Orchestration"
  homepage "https://plankhq.io"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.3/plank-local-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "7056415ea23fd052c78fc9862ebde17ea45e04c2ec9324eee85a35da0fc6f007"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.3/plank-local-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "c2458d073a28c69157d163c150acd20a6307a14e380347fb5e6fd5362968d170"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.3/plank-local-0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "867ec5cd0d81651e714ada9f064b9511cf1cf0878de639bd672f3fbcb24a9e5e"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.3/plank-local-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5866a53854b157fc6c57e274bdd114acda4930b1ddca0bf389bef97cbcbce153"
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
