class Focusoro < Formula
  desc "Pomodoro sessions, focus tracking and goals in your terminal"
  homepage "https://focusoro.com"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.1/focusoro-macos-arm64"
      sha256 "621b7ebc892d8a2465ca9a2cb1289100efa571f8f272982c2af2a616f9b112f2"
    end
    on_intel do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.1/focusoro-macos-x86_64"
      sha256 "6f30f819702ae9436a442ecea955527beb0236a6440318fb63c43576e20e6ed5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.1/focusoro-linux-arm64"
      sha256 "57fa830d7e5ca343455ba39f18afd45623ba4985ea82aca1a28cd0324805ea31"
    end
    on_intel do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.1/focusoro-linux-x86_64"
      sha256 "f90ba293cc1582677144e548806af4de1ba6a1d7767efb8a509ad5d27738b27d"
    end
  end

  def install
    bin.install Dir["focusoro-*"].first => "focusoro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/focusoro --version")
  end
end
