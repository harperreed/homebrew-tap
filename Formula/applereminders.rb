# typed: false
# frozen_string_literal: true

class Applereminders < Formula
  desc "Drop-in replacement for reminders-cli using EventKit with async/await"
  homepage "https://github.com/harperreed/applereminders"
  version "0.1.0"
  license "MIT"
  depends_on :macos

  url "https://github.com/harperreed/applereminders/releases/download/v0.1.0/reminders-macos-universal.tar.gz"
  sha256 "661f5ba8092649b818620f9279fe390de666dded411a1b94e7e9a3fd8e95ca5c"

  def install
    bin.install "reminders"
  end

  test do
    system "#{bin}/reminders", "--help"
  end
end
