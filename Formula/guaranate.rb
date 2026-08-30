class Guaranate < Formula
  desc "Developer-friendly macOS keep-awake CLI"
  homepage "https://github.com/ryok90/guaranate"
  url "https://github.com/ryok90/guaranate/releases/download/v0.1.0/guaranate-0.1.0-macos-universal.tar.gz"
  sha256 "e940bfd6d73e655813133ea5c13cde4695cfdf17351c111f3b78e2253cda172c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "guaranate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guaranate --version")
  end
end
