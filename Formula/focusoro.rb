# Placeholder: the release workflow of orocore/focusoro rewrites this file
# with the real version, URLs and checksums of each release.
class Focusoro < Formula
  desc "Pomodoro sessions, focus tracking and goals in your terminal"
  homepage "https://focusoro.com"
  version "0.0.0"
  license :cannot_represent
  url "https://github.com/orocore/focusoro/releases/download/v0.0.0/focusoro-macos-arm64"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    bin.install Dir["focusoro-*"].first => "focusoro"
  end
end
