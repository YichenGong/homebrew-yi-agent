class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.13"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.13/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "e0936c07b82472003ebf600bb11b79635b19a76c0033241beb9068a61faf891a"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.13/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "77c59f8cd2b648e8486a2ae5074ad664863ff7b2f74ba982a6810a6acfcb61d8"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.13/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ebc507011ca5e0f5dd6f8461dab9890345420d572b0f57c4f4b51369e8ff9754"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
