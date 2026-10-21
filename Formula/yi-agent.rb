class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.11"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.11/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "8f51c91898f07f46feb41a2abea1263ac7605b8bd6f93816db5398b35da1a9f1"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.11/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "0d02ff5f8ac62846669f525d6083e580ea13e33037de83ee846d04ac3ef9a675"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.11/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d2aaeaf2f1cca49bda48b0d9ea410967b1452cb2b36c167ffcbe1da06b0987a"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
