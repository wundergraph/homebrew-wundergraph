# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.93.1"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.93.1/wunderctl_0.93.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a99d2aec1e212806dfdd03c898dfe883b71cf9e7ccd9b1c958394e08471d94e2"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/v0.93.1/wunderctl_0.93.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6aca1f0d802b6892822a26a184fc383d9ae3408147812071ee930c428e9b4d10"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
