class Guaranate < Formula
  desc "Developer-friendly macOS keep-awake CLI"
  homepage "https://github.com/ryok90/guaranate"
  url "https://github.com/ryok90/guaranate/releases/download/v0.2.0/guaranate-0.2.0-macos-universal.tar.gz"
  sha256 "98d1e857365199a9d767c27a54b7f2511684a9502f59d7e2933b7801aaf27b1f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "guaranate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guaranate --version")
  end
end
