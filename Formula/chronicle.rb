class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.4/chronicle-darwin-arm64.tar.gz"
      sha256 "976191ef8d128bcf2d382c080f87711cd129927a20ed161a168fa444ccf5d0dc"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.4/chronicle-darwin-amd64.tar.gz"
      sha256 "e4fa6f598b99f3ceaad7f387be0415705d36d8de0d1c68000e0cec4c0331e047"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
