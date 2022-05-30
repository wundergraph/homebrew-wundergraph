# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.90.25"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.90.25/wunderctl_0.90.25_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "fa6a5776c705f13374fe5eed929ad7d90ff0561e716de0e5c7e643114ea0f58b"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.90.25/wunderctl_0.90.25_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b062fc384eb12b7b2949696f9d187549706e4cd8d23d64f09317ea914fe525e6"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
