class Micropub < Formula
  desc "Ultra-compliant Micropub CLI with MCP server support"
  homepage "https://github.com/harperreed/micropub"
  url "https://github.com/harperreed/micropub/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "686c605aa4c2297732e790b89a82b6a50bc59b5cb32cc5400de25a12603bdee5"
  license "MIT"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/harperreed/micropub/releases/download/v0.2.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d22df5e1636d88553f1c2662d9745b65eac8a62fc593ea9af128b58a7b13261b"
    sha256 cellar: :any_skip_relocation, ventura: "5208138efe966eccb7b4a72b97a1423ee8081055edac3721a0bd546156aa40b6"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropub --version")
  end
end
