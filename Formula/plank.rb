class Plank < Formula
  desc "Programmable execution engine for modern CI/CD"
  homepage "https://plankhq.io"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/plank-local/releases/download/v0.0.2/plank-local-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "1d084cb1fa0aaef4af5bba936df8d4097d4b06d7fb3dd9c88d05f2228809e91a"
    else
      url "https://github.com/plankhq/plank-local/releases/download/v0.0.2/plank-local-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "3c722abd62876b14a4d9a2f729c956c1d039790d9b5962f56054a8782b858332"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/plank-local/releases/download/v0.0.2/plank-local-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f34219dcc285ac637d4a4720ff0e5e5f25c7af2299afc986583cb5bb2199a4c"
    else
      url "https://github.com/plankhq/plank-local/releases/download/v0.0.2/plank-local-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e97d013236fcd79f3662c751ca4f98f95d74ff471d9bd801dc0ad3578d67d88"
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
