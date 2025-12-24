class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.5/chronicle-darwin-arm64.tar.gz"
      sha256 "de45f5f928a173cbe338976bc70a2a902ee19801e4f2d8443c6baa9734da4720"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.5/chronicle-darwin-amd64.tar.gz"
      sha256 "116a27c4a7d60b3a6baa6f4617808d0dde088a872fc98c92aa58483396249307"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
