class Focusoro < Formula
  desc "Pomodoro sessions, focus tracking and goals in your terminal"
  homepage "https://focusoro.com"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/orocore/focusoro/releases/download/v1.1.0/focusoro-macos-arm64"
      sha256 "8dcb18e10429fcefc03b19dcef52be55f0974c51d05d43e1283a7b813b121196"
    end
    on_intel do
      url "https://github.com/orocore/focusoro/releases/download/v1.1.0/focusoro-macos-x86_64"
      sha256 "38536389e0e7e713ef09da9706f5d71dc42eb7fc7d0f8fef9257d3f19b932d4b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/orocore/focusoro/releases/download/v1.1.0/focusoro-linux-arm64"
      sha256 "91affc1c8dd3f6f654b21bda4dd0a31929e5fd33c6b185e11b5a5da1362ed8dc"
    end
    on_intel do
      url "https://github.com/orocore/focusoro/releases/download/v1.1.0/focusoro-linux-x86_64"
      sha256 "e6685cbaa388218a11f5c12129e9be8f5352e97bf4ff23f5280d58cf9ad62aec"
    end
  end

  def install
    bin.install Dir["focusoro-*"].first => "focusoro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/focusoro --version")
  end
end
