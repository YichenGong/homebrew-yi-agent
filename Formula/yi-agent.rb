class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.0.0"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.0.0/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.0.0/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.0.0/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
