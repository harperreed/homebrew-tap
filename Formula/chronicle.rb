class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.3/chronicle-darwin-arm64.tar.gz"
      sha256 "f21b13f461a7c849d07ee275d49794912e60d1e7a4064d390be1e66ecd336d18"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.3/chronicle-darwin-amd64.tar.gz"
      sha256 "24f8a538e1577b9f816ebeca3f2dedb545b19f7f13bf40adb6170d7acf674d45"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
