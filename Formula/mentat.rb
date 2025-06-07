class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://api.github.com/repos/EthanOrlander/mentat/releases/assets/261806582",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  version "0.2.2"
  sha256 "0b431f81d9ee3827a9e62de00cde6893ce824558734b441a194f997f6c65e9a9"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
