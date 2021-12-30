# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.49.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.49.0/wunderctl_0.49.0_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "17e4879f32ac2c312ecb68653f5c4e132bcac7d556048afdc3d27de6782a2e89"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.49.0/wunderctl_0.49.0_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "486cc29d2ae9d8fd05ac8db9c5262ffd95433106154851024dcc3ac56a6ff552"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
