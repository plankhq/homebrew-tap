class Plank < Formula
  desc "Programmable execution engine for modern CI/CD"
  homepage "https://plankhq.io"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "5c663f1208933f7e1b3512393baf8e4a9e5ee7394694b6f1234dd492545d41b8"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "144c920ef865e5e1556d0f80b84047befd7b25f66bdb3d1593bab9329ff8ac04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c80e5879bdb09b52a83089ce2810b4f12e5eb78eafc6d34d4a593deb995b75d"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.2/plank-local-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "432c140d6e48a9b357359a48a85c963e415898bee236109f9f875a98193a29a2"
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
