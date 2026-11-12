class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.9.1/chronicle-darwin-arm64.tar.gz"
      sha256 "544cd69d9ef95326ab180d3b4b8a31486706a2d74e7ec8d2bd2c50bfa981e3e5"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.9.1/chronicle-darwin-amd64.tar.gz"
      sha256 "ba7e3e5f537b020d68202595e71d3515b2c43ec088077cdad3afbb7cd4eec6d8"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
