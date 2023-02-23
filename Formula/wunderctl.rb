# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.131.1"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.131.1/wunderctl_0.131.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3db00c468d0f0177f24e7d7b3754fe45c293938e3c629c7d118f530dcecbbf08"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.131.1/wunderctl_0.131.1_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "3795e6300861175682c0a4d0e9647858f27835a807f6b6d118b9cb1894d5202f"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
