# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.111.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.111.0/wunderctl_0.111.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d2959d3c8161fbd124850d51fa7d43c3169ce124cbad574b2e9fe1b4d436d066"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.111.0/wunderctl_0.111.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "0756c9894ee6dad944e1d87d3d2420147f63f3600cbf77f6424049b3934a2e7f"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
