cask "chronicle" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1"
  sha256 arm:   "ac28cc5f7a7e81828b18acbe1c4bb95b2f258f96ef2eced908822e751b8a60ee",
         intel: "617481e738a943211140c7c8e74ff206e89c1cd2f78aeadbbdbbe7f23e77727f"

  url "https://github.com/harperreed/chronicle/releases/download/v#{version}/chronicle-darwin-#{arch}.tar.gz"
  name "Chronicle"
  desc "Timestamped logging tool with SQLite and optional project log files"
  homepage "https://github.com/harperreed/chronicle"

  binary "chronicle-darwin-#{arch}", target: "chronicle"
end
