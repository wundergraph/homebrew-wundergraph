# typed: false
# frozen_string_literal: true

class Wgc < Formula
  desc "WunderGraph Cosmo CLI"
  homepage "https://cosmo-docs.wundergraph.com/cli/intro"
  url "https://registry.npmjs.org/wgc/-/wgc-0.124.0.tgz"
  sha256 "9a305db33be4f099cc76e5034ac55ee252949e2e04c011bc5ae68dc8509c91a3"
  license "Apache-2.0"

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      Documentation is available at:
        https://cosmo-docs.wundergraph.com/cli/intro
    EOS
  end

  test do
    assert_match "Usage: wgc", shell_output("#{bin}/wgc --help")
    assert_match version.to_s, shell_output("#{bin}/wgc --version")
  end
end
