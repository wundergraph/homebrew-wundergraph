# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.118.1"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.118.1/wunderctl_0.118.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9643d1fd01e8fb5c6e81b524717f7b7c8cfbb22ad49f3d307489c2570d76efc5"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.118.1/wunderctl_0.118.1_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "62d0291954ad50a965a49e8296c3522842706ebe3b386849515181c85ba785d6"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
