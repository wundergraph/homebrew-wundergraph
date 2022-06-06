# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.90.32"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.90.32/wunderctl_0.90.32_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "dfea69794f03a5ad7e3adc866f3ccaf63c4e1b56a95c348a8e9658d50dcf87d1"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.90.32/wunderctl_0.90.32_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "852bbbce63f24dde0cea18782e3e61082aef548405dca544b05230b42c062793"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
