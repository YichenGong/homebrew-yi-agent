class YiAgent < Formula
  desc "A coding agent CLI"
  homepage "https://github.com/YichenGong/yi-agent"
  head "https://github.com/YichenGong/yi-agent.git", branch: "main"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.1/yi-agent-x86_64-apple-darwin.tar.gz"
      sha256 "8d8b623af5c0db480528cbba46b6e458fb3a4671662a8becb40bbdaaec758256"
    end
    on_arm do
      url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.1/yi-agent-aarch64-apple-darwin.tar.gz"
      sha256 "bb6921a404d45c890d74009fa662ac85af3bd9b921e7e26999bad3414c55e7a4"
    end
  end

  on_linux do
    url "https://github.com/YichenGong/yi-agent/releases/download/v0.1.1/yi-agent-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "476bc93e0c565e502835fa83ee9e333d49ce6726b2ed97abe132ddcb95a13153"
  end

  def install
    bin.install "yi-agent"
  end

  test do
    assert_match "yi-agent", shell_output("#{bin}/yi-agent --version", 0)
  end
end
