# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.94.5"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.94.5/wunderctl_0.94.5_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9c98a76abd5adbeb08c4b6632b85c49cf75ecc504026bb1c8f95e30c9ea515c7"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.94.5/wunderctl_0.94.5_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6815dfad6eb106c13c1e666a6fb8ddefbdc43f2f62e6d595879599405df8258e"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
