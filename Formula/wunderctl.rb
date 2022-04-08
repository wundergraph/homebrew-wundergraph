# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.74.6"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.74.6/wunderctl_0.74.6_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4f7b70eb0e8d2a608d5a736187c2e87ee26313a382a879083a1118447551d24e"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wunderctl/releases/download/v0.74.6/wunderctl_0.74.6_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0a9828be1f80c9c561b3883d05d890e24cc25f7b7a08336103f0225115c79e9e"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
