class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.1.4/chronicle-darwin-arm64.tar.gz"
      sha256 "2ed59ed99635bda65daca81c779f5483ea51cdbf7633c0e10d05a488c3077d95"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.1.4/chronicle-darwin-amd64.tar.gz"
      sha256 "7933c8d893fb903db36ad1763fc2571b604e6dfb47d3306e6058e9a79985e9fd"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
