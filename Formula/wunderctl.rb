# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.152.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.152.0/wunderctl_0.152.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "355378017c2d78489569005f07dcce3227a52bc7814c6bee0e2f3d6784c6fae2"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.152.0/wunderctl_0.152.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "6509c57f4987b1052a7906de86311cbb33e2b09dc0b1b15c47de9f26fe34b045"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
