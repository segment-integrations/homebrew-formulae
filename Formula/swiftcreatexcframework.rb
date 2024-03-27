# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SwiftCreateXcframework < Formula
  desc "Creates an XCFramework out of a Swift Package using xcodebuild"
  homepage "https://github.com/segmentio/swift-create-xcframework"
  url "https://github.com/segmentio/swift-create-xcframework.git"
  version "1.1.0"
  sha256 :no_check
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
