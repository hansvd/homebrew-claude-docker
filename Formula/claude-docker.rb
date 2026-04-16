class ClaudeDocker < Formula
  desc "Run Claude Code autonomously in Docker with git worktree isolation"
  homepage "https://github.com/hansvd/homebrew-claude-docker"
  url "https://github.com/hansvd/claude-docker/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "7e9b27845b3dc6c292db7ff878cfd37017f096fe096bbc5658c12b31cced07ed"
  license "MIT"

  depends_on "yq"
  depends_on "jq"

  def install
    bin.install "bin/claude-docker"
  end

  test do
    assert_match "claude-docker", shell_output("#{bin}/claude-docker --version")
  end
end
