class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://github.com/EthanOrlander/mentat/releases/download/v0.1.0/mentat-v0.1.0-universal-apple-darwin.tar.gz"
  version "0.1.10"
  sha256 "b1606e605cb2973b2ae19aa4e33dba51cba5942bc071edf80753dc7122dfaa96"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
