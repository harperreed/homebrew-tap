class Micropub < Formula
  desc "Ultra-compliant Micropub CLI with MCP server support"
  homepage "https://github.com/harperreed/micropub"
  url "https://github.com/harperreed/micropub/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "60be18440a1a2c882c1918664287008a99dacd8c8a0884346e29304b11bc9176"
  license "MIT"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/harperreed/micropub/releases/download/v0.2.6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5647842403c3d6d25474b3de027870fce608ef038860ab0ec2b2f5bd9a2ed545"
    sha256 cellar: :any_skip_relocation, ventura: "04d45d04c5203471e282a9fc878811221affec0925a1ac5eedc65643685c3d32"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropub --version")
  end
end
