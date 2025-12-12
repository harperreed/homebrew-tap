class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.1.4/chronicle-darwin-arm64.tar.gz"
      sha256 "d49d65b31609f90000132d069ebbc16df95804625259afa9b80ece19bf2f155d"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.1.4/chronicle-darwin-amd64.tar.gz"
      sha256 "35e199c6917e7ce89758b3755382eae3f4b453d0d52242180bb01446d3fa5fe5"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
