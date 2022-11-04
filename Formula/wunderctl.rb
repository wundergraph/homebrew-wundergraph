# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.115.4"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.115.4/wunderctl_0.115.4_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4933e569fcb632f87bedfcba75b6560c44a29a8687118f8a040dadde863a998c"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.115.4/wunderctl_0.115.4_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "6bde0eb79d8abb0a4f247c111ba3a1ed5520169e2888519f817506b6559ae2a0"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
