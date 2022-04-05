# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.74.2"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.74.2/wunderctl_0.74.2_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e5cc9312a07ba6eb6e310ddb02e209666b0f337578e35cc3c70dd5e5305c5965"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.74.2/wunderctl_0.74.2_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a78521926165f0142f814c619c655271905be78d1d30928c680cb23c975e8138"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
