# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.44.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.44.0/wunderctl_0.44.0_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c8b10b63221dbb9f5ddc7815a2cc86eb1b361e7966133d9efd3cd367cf555de9"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.44.0/wunderctl_0.44.0_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f62e7c6be6255f118a146a85ce384f7e6925390f4a4b36be99549aeef0274250"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
