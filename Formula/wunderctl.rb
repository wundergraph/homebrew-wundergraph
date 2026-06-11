# typed: false
# frozen_string_literal: true

class Wunderctl < Formula
  desc "WunderGraph Command-line Interface (wunderctl)"
  homepage "https://wundergraph.com/"
  version "0.180.0"
  license "Apache-2.0"

  disable! date:                "2026-06-11",
           because:             "wunderctl has been replaced by the WunderGraph Cosmo CLI",
           replacement_formula: "wgc"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/wundergraph/wundergraph/releases/download/v0.180.0/wunderctl_0.180.0_Darwin_arm64.tar.gz"
    sha256 "9298562ceaeba738703811a3fcb663e64ba4a490863f3e20b439acd6ab4d6af8"
  else
    url "https://github.com/wundergraph/wundergraph/releases/download/v0.180.0/wunderctl_0.180.0_Darwin_x86_64.tar.gz"
    sha256 "b902a034fd757a14e6de36d6ed84b00f089b5b27ca883da7789de277ff7d45de"
  end

  def install
    bin.install "wunderctl"
  end
end
