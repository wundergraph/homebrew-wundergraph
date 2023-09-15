# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.174.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.174.0/wunderctl_0.174.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f5798c9f985f3d0329747fe09fd8ee4c209d3102bb0d02c9976f2c45002e40a7"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.174.0/wunderctl_0.174.0_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "ff46ed5c188004320cf74865fc4587f3d1e5aebdeee88097d30c6ef323e90a6e"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
