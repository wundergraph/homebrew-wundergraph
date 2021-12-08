# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.40.1"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.40.1/wunderctl_0.40.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a26588ee93c9b865f79250c6ed31ffcfaf68fe160dd5ff6a8d1bf966d73c0eaa"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.40.1/wunderctl_0.40.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c043429d4f14c1abd1fb137834d7d23df2f089f608dea51e880271cc5d017bf7"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
