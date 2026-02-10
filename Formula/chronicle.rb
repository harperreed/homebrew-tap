class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.7.3/chronicle-darwin-arm64.tar.gz"
      sha256 "7888044ffe9b8ec1a89c36fc4fc9c10dee0071906451e6c58874b901bb33b86d"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.7.3/chronicle-darwin-amd64.tar.gz"
      sha256 "2d25d2b1c98bbd45f6ae413edbdc242183376aca35add8485475a91188a09567"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
