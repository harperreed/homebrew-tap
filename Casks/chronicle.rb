cask "chronicle" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0"
  sha256 arm:   "640007e61a9370770059f25acb4cd2352cc9ac24abcdb2b68462814936994ae3",
         intel: "b629e4afe3fe3888359fbc89b29fd21b49feeb06dd5d5a02c7802592e8f0362f"

  url "https://github.com/harperreed/chronicle/releases/download/v#{version}/chronicle-darwin-#{arch}.tar.gz"
  name "Chronicle"
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"

  binary "chronicle-darwin-#{arch}", target: "chronicle"
end
