class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.0/chronicle-darwin-arm64.tar.gz"
      sha256 "078dfd0a92e6f6d6d07279deadf307bc23d3b1fd687130c9ef0a196cfa8172c0"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.0/chronicle-darwin-amd64.tar.gz"
      sha256 "ed1aa0de0cf873f28b702564090b299375ce26b958575859031fabc87ad0bbda"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
