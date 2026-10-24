class Focusoro < Formula
  desc "Pomodoro sessions, focus tracking and goals in your terminal"
  homepage "https://focusoro.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.0/focusoro-macos-arm64"
      sha256 "fe9467ff1dac84b1e82d964fe498e5bae7980cca30dc9f4cbda7bdab5f42b298"
    end
    on_intel do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.0/focusoro-macos-x86_64"
      sha256 "54bd92800e0906ffd2d9c31ff00d5ce994b21d994a6fabfa3b6ae6262b233bcc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.0/focusoro-linux-arm64"
      sha256 "2c8d5ec538f68582d7efe6f58f0bfe134e2ae42e35ceb46ef3696c48d685027f"
    end
    on_intel do
      url "https://github.com/orocore/focusoro/releases/download/v1.0.0/focusoro-linux-x86_64"
      sha256 "fbe79a90255f4ed08a16a8ed56a1f1628191ddec852d8331607d26ecadcd740c"
    end
  end

  def install
    bin.install Dir["focusoro-*"].first => "focusoro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/focusoro --version")
  end
end
