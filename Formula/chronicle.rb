class Chronicle < Formula
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.0/chronicle-darwin-arm64.tar.gz"
      sha256 "748ee9893933b686ec8df42440d645c4f1688d1f1e92264518e6cc37c6a07770"
    else
      url "https://github.com/harperreed/chronicle/releases/download/v1.2.0/chronicle-darwin-amd64.tar.gz"
      sha256 "2f60311174a393d6317bdc8cbf5fb4e8652322c859fc7d0b2d844430ae755616"
    end
  end

  def install
    bin.install Dir["chronicle-*"].first => "chronicle"
  end

  test do
    system "#{bin}/chronicle", "--help"
  end
end
