class Micropub < Formula
  desc "Ultra-compliant Micropub CLI with MCP server support"
  homepage "https://github.com/harperreed/micropub"
  url "https://github.com/harperreed/micropub/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "0dde4cb753e4640ed9dbb408d93c67d6d800a6dbfde9eb269f9a68809b2458c6"
  license "MIT"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/harperreed/micropub/releases/download/v0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "651644cfb3cb2fa5e7441f7c9e68c6436c1825e0804a37466d690a072e455fc1"
    sha256 cellar: :any_skip_relocation, ventura: "52cf0e4e4104bf1853d7ccecc96deb2de567033b91f4ccfc5ef430847aa0e8a0"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropub --version")
  end
end
