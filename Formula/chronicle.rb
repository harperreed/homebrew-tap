class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v0.7.5/chronicle-darwin-arm64.tar.gz"
      sha256 "346f04f490f9cf34cd76e8bcc1dc11e7217aa4a01e6d720c6c38934ab873cd9f"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v0.7.5/chronicle-darwin-amd64.tar.gz"
      sha256 "956e7ef6f76b29889b987bce70a89eb03dec54998859af68161ad2e41f813fc8"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
