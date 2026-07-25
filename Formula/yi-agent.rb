class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.2/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "adf622a0a04d34c9fcabf94d75bb5771ab59ae5f5091b1dfcbfb1255749ed526"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.2/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "2023857f91d5ea71f1c9fc56714549686e1916fe715680eee688d898e450363c"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.2/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e150f4716801d8860943d82761979d1bab3f908e59064262f2f6385a909d2b09"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
