class Plank < Formula
  desc "Plank - Agent first CI/CD and Workflow Orchestration"
  homepage "https://plankhq.io"
  version "0.0.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.41/plank-local-0.0.41-aarch64-apple-darwin.tar.gz"
      sha256 "a57028d81dec2976509105466313150453d0a39f89c8cc8bf64542525a96d1f7"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.41/plank-local-0.0.41-x86_64-apple-darwin.tar.gz"
      sha256 "f57fde43ea7c5fc215e061d540202424ed1c25d6dd46e0fca916786f128a5ac4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.41/plank-local-0.0.41-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7e9d029b50bb635542532773f993ab5d875c863122b1cfa1d34eec9dedcf384"
    else
      url "https://github.com/plankhq/homebrew-tap/releases/download/v0.0.41/plank-local-0.0.41-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac58c365ec665c01f974b24f88921a863ac0de70e73821e012bc448239b08b0"
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
