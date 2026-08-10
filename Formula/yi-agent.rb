class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.3/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "f13be8853a9fb0614f4f3fe51234c4ca8734b8678c243714991def278b3aa674"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.3/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "f29e4208873167f231412412c22c9d2ca0ac62d1862e997681ff158a4bcfd6b1"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.3/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4ef31f539c12d1eb2d4cb5b9733afeceb9dceddab209c601b5284aee69dfc927"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
