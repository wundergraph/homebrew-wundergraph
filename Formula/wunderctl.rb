# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.149.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.149.0/wunderctl_0.149.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "eb934fc6abf0014088b3b4e1aaf242864a7596f9c137216fa635442a8f67ff51"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.149.0/wunderctl_0.149.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "88c1bf45344089cbe7b3a784906f5d8bc2d6652a123d0fd4b2fe5816d5ed17b4"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
