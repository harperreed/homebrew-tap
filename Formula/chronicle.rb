class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.1/chronicle-darwin-arm64.tar.gz"
      sha256 "acc4d94fdc69b10258d18055704545a5a69d042deb6840165765c716c90875fb"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.1/chronicle-darwin-amd64.tar.gz"
      sha256 "c30c2d75a59312a308097208175754c5c2eeddd4c8c90e215e581d5feb71a721"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
