class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://api.github.com/repos/EthanOrlander/mentat/releases/assets/261811024",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  version "0.2.3"
  sha256 "e8ac5ac2c69a1ec533924757a86035586e44e80e118c2d4c61c6f0e92387e70e"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
