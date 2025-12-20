class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.1/chronicle-darwin-arm64.tar.gz"
      sha256 "836b5e8c201fd10c306495d0feac8e549094078a5fb6f13812fbc1166460fb6e"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.1/chronicle-darwin-amd64.tar.gz"
      sha256 "555fc1be792e80fb40356b81a39564a308adf308836d7aa73511b5a810fe88b4"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
