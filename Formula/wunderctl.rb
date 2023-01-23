# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.127.1"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.127.1/wunderctl_0.127.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "65ed798a73b1c04998edb8cb53e1abbb9efb7d33fd1fd88db65f55bea6f201fc"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.127.1/wunderctl_0.127.1_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8b8277a0f30ddec8450315caac9569af0ceec61cbc28db9610d4ef395a24c20"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
