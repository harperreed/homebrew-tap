class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.6.0/chronicle-darwin-arm64.tar.gz"
      sha256 "9ad9c222c9125489f278607cb05dff68909ce2a787639fb616d269d5a2feec35"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.6.0/chronicle-darwin-amd64.tar.gz"
      sha256 "c21d8a2f6ef48ec8900f662c31432efe39f2c714ba880a9becde57b39fe20039"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
