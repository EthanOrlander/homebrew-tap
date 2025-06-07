class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://api.github.com/repos/EthanOrlander/mentat/releases/assets/261856428",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  version "0.2.5"
  sha256 "e60384e3591dcff6eb327a0d4bda46e718e0d42d033f553227944c130e68dc08"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
