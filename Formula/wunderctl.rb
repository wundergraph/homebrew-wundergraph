# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wunderctl < Formula
  desc "wunderctl - the WunderGraph Command Line Interface"
  homepage "https://wundergraph.com/"
  version "0.140.1"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.140.1/wunderctl_0.140.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f30efe1974cb337515fe6b12365febda369c8575abf053135db72f06ce200c1"

      def install
        bin.install "wunderctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wundergraph/wundergraph/releases/download/0.140.1/wunderctl_0.140.1_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8b1f1208b537092c369a23b328a4b2f6666aab3ef6103048a040c36f45f4956"

      def install
        bin.install "wunderctl"
      end
    end
  end
end
