# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.50.4"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.50.4/wunderctl_0.50.4_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "35e18a761f987c7a808d61f086c0c0ca4e102c9c17f806adcfb93c26d7479c51"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.50.4/wunderctl_0.50.4_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6a6222d6f5a3ac0e064124b406466782ef6a2fec7f28e7225ea7a76088db95df"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
