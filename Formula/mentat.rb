class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://api.github.com/repos/EthanOrlander/mentat/releases/assets/261806191",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  version "0.2.1"
  sha256 "983f6a2fc0e438cd1366bab109f6b23713bf3d864cb60e7a9c542051fddd548c"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
