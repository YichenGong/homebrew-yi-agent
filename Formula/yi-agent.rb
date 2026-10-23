class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.12"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.12/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "32fcae5fad6b69a82cac727c7aedb946c65bf9198b0ddba167809b53ec6a818f"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.12/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "e5557d57a2c5f63b4a26c58fb8b69428fcda9d16a37d0c9a0ff4625152e72fe7"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.12/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8cc3efabe9296f0e4105042fb6e84a58f065c578e02f32eeaeece4109cc7d0d"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
