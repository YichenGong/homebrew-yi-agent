class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.0/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "558bbfa1e0391ca57705cd8749a3319b5df86b90c0e04e90f0ccd697b380299b"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.0/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "b94bc3391b35dd1b356ca4385d038948f7ed627a06d7744070d33d74e2e05bc2"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.0/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4973e7edfb19525e914f874adbf8d398caa1d5de127ca34dae7a513ccd51c7c6"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
