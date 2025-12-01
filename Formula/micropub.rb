class Micropub < Formula
  desc "Ultra-compliant Micropub CLI with MCP server support"
  homepage "https://github.com/harperreed/micropub"
  url "https://github.com/harperreed/micropub/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "686c605aa4c2297732e790b89a82b6a50bc59b5cb32cc5400de25a12603bdee5"
  license "MIT"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/harperreed/micropub/releases/download/v0.2.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fe54975f2b3d230da0506f55d58e48b927318ab4cdd33a1a5c237ac15fe6ceef"
    sha256 cellar: :any_skip_relocation, ventura: "053a05e23a7c3b72556c39c5afb5a64bbea0d0b89c6a9dc1f6d62bb58a864013"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropub --version")
  end
end
