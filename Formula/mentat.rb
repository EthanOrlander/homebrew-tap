class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://github.com/EthanOrlander/mentat/releases/download/v0.1.0/mentat-v0.1.0-universal-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "UPDATE_WITH_ACTUAL_SHA256"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
