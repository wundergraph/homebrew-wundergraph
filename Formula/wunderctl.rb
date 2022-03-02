# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.66.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.66.0/wunderctl_0.66.0_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b7705e7a7d1568f9def7db708948b8b207ca4ddb67c2384385eafd189e936ec0"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.66.0/wunderctl_0.66.0_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "cb256ec8b047cb48138d43c2a4c6281d82b96aeb7c2b637daede8c8049507f39"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
