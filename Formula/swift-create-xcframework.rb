# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SwiftCreateXcframework < Formula
  desc "Creates an XCFramework out of a Swift Package using xcodebuild"
  homepage "https://github.com/segment-integrations/swift-create-xcframework"
  url "https://github.com/segment-integrations/swift-create-xcframework.git"
  head "https://github.com/segment-integrations/swift-create-xcframework.git", branch: "main"
  version "2.4.1"
  sha256 "c72d6bbc6f650ce71093766c33b6e3f51a9857e8400d34f441e9f6dfdc0f1b59"
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
