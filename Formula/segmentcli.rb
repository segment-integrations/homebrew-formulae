# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Segmentcli < Formula
  desc "Command Line Tool for Segment"
  homepage "https://github.com/segment-integrations/segmentcli"
  url "https://github.com/segment-integrations/segmentcli.git"
  version "1.0.0"
  sha256 "c51075cbfd1490fe2333ef3a46348aa5bad4ea1a1f35e3db1d335b51cecca5b4"
  license ""

  depends_on xcode: ["14.0", :build]

  # depends_on "cmake" => :build

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/segmentcli", "--help"
  end
end
