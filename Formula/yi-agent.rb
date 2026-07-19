class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.0/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "18e969abe55c5aa61361473f48dcb1bb0e806eaa0df0cd9e5426e130c52c2d62"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.0/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "4e94efec34687bbb28342a11781fb58655db0255c87d408c9849111f3296238d"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.0/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a7afcd9cc0baa42b1097a725a06b1bb292a4c2bb66615c5a1994570ea34051b4"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
