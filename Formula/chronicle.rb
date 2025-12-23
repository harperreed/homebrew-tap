class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.4/chronicle-darwin-arm64.tar.gz"
      sha256 "0d48e3f920e92f1927a847de5322682d97d23e3d568d83e57e28f823dd4c8155"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.4/chronicle-darwin-amd64.tar.gz"
      sha256 "ef5f939c546e4d2b7bb0fc74e3c58a364d6c0072b97ecf5569e70f0b37702fb5"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
