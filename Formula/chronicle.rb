class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.3.0/chronicle-darwin-arm64.tar.gz"
      sha256 "5d0b27f12633675a278a5d19659263d4f030f8c652d481dee0d6019c2a6dbca2"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.3.0/chronicle-darwin-amd64.tar.gz"
      sha256 "19a6c941ebf7155c59047a17190d7993376a64f6faaec5bde471633a590340a1"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
