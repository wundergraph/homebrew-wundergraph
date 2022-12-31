# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.124.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.124.0/wunderctl_0.124.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7c52e8b390df0ad77acdc42bf080aca9efcc51ef7573b200d5b8d20a0b902d3c"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.124.0/wunderctl_0.124.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa329a7fe8ab98e025c6a2e56a87b375c762b63eaa08bcfce67bf7eac24c3543"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
