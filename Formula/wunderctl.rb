# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.151.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.151.0/wunderctl_0.151.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c3a68844bbc2707b590632abda59be4c734a58daeba615f73630c84e27740873"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.151.0/wunderctl_0.151.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "960817e0bd245ee5f937176ebe4d52ce3033862cbf78798f78c03cdbf9d35c7a"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
