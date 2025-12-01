class Micropub < Formula
  desc "Ultra-compliant Micropub CLI with MCP server support"
  homepage "https://github.com/harperreed/micropub"
  url "https://github.com/harperreed/micropub/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "686c605aa4c2297732e790b89a82b6a50bc59b5cb32cc5400de25a12603bdee5"
  license "MIT"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/harperreed/micropub/releases/download/v0.2.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ccaed9cdc2a6702e3e08b0a9fbfbeb26fa9f595dc4c8ac0f1258de4a81fcc540"
    sha256 cellar: :any_skip_relocation, ventura: "e38e3ba7b65e51360f203d147fec183fff4a54a2cc2cee2110e74724ced20d71"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropub --version")
  end
end
