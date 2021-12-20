# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.44.1"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.44.1/wunderctl_0.44.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "eb44f7a27e65456915d58225391ee8a8253c50b40436762b060c769906e47d46"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.44.1/wunderctl_0.44.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "975735a61c9d0de408e23d20d7c83667b7dedcfd92bec2e9948f6a3c024587f5"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
