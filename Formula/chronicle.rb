class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.2/chronicle-darwin-arm64.tar.gz"
      sha256 "76da3505921f55a792ddfe8a6293eed30e0b24cd93c94b311fa406c8f2e12e79"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.2/chronicle-darwin-amd64.tar.gz"
      sha256 "18f8c11accd4cd12fbfb936b490fefbacba0f1cb82a07d9380b278e25fc3a391"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
