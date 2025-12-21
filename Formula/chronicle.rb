class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.2/chronicle-darwin-arm64.tar.gz"
      sha256 "48c56df370ed46a8d17c04df7464268e1f76670762b9baa9146affef452e74f1"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.4.2/chronicle-darwin-amd64.tar.gz"
      sha256 "82d0c03405e59cea1b73ab64f760f7a49ac11485a4ac54d95e3b428f176af75c"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
