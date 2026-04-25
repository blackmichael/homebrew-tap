class Tuisky < Formula
  desc "Terminal Bluesky client"
  homepage "https://github.com/blackmichael/tuisky"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blackmichael/tuisky/releases/download/v1.0.0/tuisky-1.0.0-darwin-arm64.tar.gz"
      sha256 "3e20d68dd064ca0ac4d9be89a82b03ae58c93c74871264c76cfe617f1ca1a09e"
    else
      url "https://github.com/blackmichael/tuisky/releases/download/v1.0.0/tuisky-1.0.0-darwin-x64.tar.gz"
      sha256 "476fa37958e0df823be1c8971872a919a1b0d455454bd8ec78a3674fce11c748"
    end
  end

  def install
    bin.install "tuisky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuisky --version")
  end
end
