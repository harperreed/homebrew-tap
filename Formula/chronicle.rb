class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.3/chronicle-darwin-arm64.tar.gz"
      sha256 "cae8af6debbcd651766b075080a5ea22ac747e8cf6576593c5b83fbb5127b1f1"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.3/chronicle-darwin-amd64.tar.gz"
      sha256 "8abf45956134cbbaecd2b238525fe47750b5f784b71c959c2af997428e0b4e37"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
