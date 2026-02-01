class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.5.0/chronicle-darwin-arm64.tar.gz"
      sha256 "c6bbe1383afc5585a640c53daced3be027f9819fa3ce2a006576486d5413f0fc"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.5.0/chronicle-darwin-amd64.tar.gz"
      sha256 "9aafab86a097a696c094285f51d1d40bb3dffa69ec22366bc9fea20065a3df2b"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
