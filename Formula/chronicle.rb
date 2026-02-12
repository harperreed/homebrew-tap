class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.8.0/chronicle-darwin-arm64.tar.gz"
      sha256 "24dbc4b3bdb31dd13f1b3c1355c40f4514637065f8a6c8bb6eb3234663b7b2df"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.8.0/chronicle-darwin-amd64.tar.gz"
      sha256 "49a2b2b648a8db9afab631fe64032e578015105cb602e3bb4cea3e20f6cb71c3"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
