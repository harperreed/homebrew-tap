# typed: false
# frozen_string_literal: true

class Applereminders < Formula
  desc "Drop-in replacement for reminders-cli using EventKit with async/await"
  homepage "https://github.com/harperreed/applereminders"
  version "0.0.5"
  license "MIT"
  depends_on :macos

  url "https://github.com/harperreed/applereminders/releases/download/v0.0.5/reminders-macos-universal.tar.gz"
  sha256 "cbe98078e93e661a3dc1ad60859dd523be9506fde216c4701979969cfa32a600"

  def install
    bin.install "reminders"
  end

  test do
    system "#{bin}/reminders", "--help"
  end
end
