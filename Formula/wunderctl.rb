# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.157.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.157.0/wunderctl_0.157.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b639f16a59084639845911b407408f4257a255264d3b74e0b1e495b491ad6db3"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.157.0/wunderctl_0.157.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9996927913eacdc7acaa00b7a3877fc1058a266dd168b0e5d9a429e71f25826e"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
