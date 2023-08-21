# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.170.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.170.0/wunderctl_0.170.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "83757aced1f5b906ce46a16cee9c8460802851a45bb311ff04855dfe58bc8f69"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.170.0/wunderctl_0.170.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c7b8a3482fb0c257fac5b98b09bb8d71bafea3006f395e2e19142fb4c4c1f0cb"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
