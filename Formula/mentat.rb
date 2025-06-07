class Mentat < Formula
  desc "AI development assistant CLI tool"
  homepage "https://github.com/EthanOrlander/mentat"
  url "https://api.github.com/repos/EthanOrlander/mentat/releases/assets/261791592",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  version "0.1.11"
  sha256 "ee2c2f992a035849f7a89193e2dc1b403105f311aefde3502b38c3a2fd4886cb"

  def install
    bin.install "mentat"
  end

  test do
    system "#{bin}/mentat", "--version"
  end
end
