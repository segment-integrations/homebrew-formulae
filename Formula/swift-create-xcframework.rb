# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SwiftCreateXcframework < Formula
  desc "Creates an XCFramework out of a Swift Package using xcodebuild"
  homepage "https://github.com/segment-integrations/swift-create-xcframework"
  url "https://github.com/segment-integrations/swift-create-xcframework.git"
  head "https://github.com/segment-integrations/swift-create-xcframework.git", branch: "main"
  version "2.4.1"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on xcode: ["15.0", :build]

  # depends_on "cmake" => :build

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swift-create-xcframework", "--help"
  end
end
