class Tuisky < Formula
  desc "Terminal Bluesky client"
  homepage "https://github.com/blackmichael/tuisky"
  version "1.0.0"
  license "MIT"

  url "https://github.com/blackmichael/tuisky/releases/download/v1.0.0/tuisky-1.0.0-darwin-arm64.tar.gz"
  sha256 "1c6d5da7f7d6366918e218dce87d7095e6f039c1ce951ee0b24e9219c7f9d85c"

  on_intel do
    url "https://github.com/blackmichael/tuisky/releases/download/v1.0.0/tuisky-1.0.0-darwin-x64.tar.gz"
    sha256 "0f458c17ca13d4c3a81b3be3370cc0ac221eac68fd25989537d746e62f21b0ee"
  end

  def install
    odie "tuisky is only supported on macOS" unless OS.mac?
    bin.install "tuisky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuisky --version")
  end
end
