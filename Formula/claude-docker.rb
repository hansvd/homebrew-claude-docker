class ClaudeDocker < Formula
  desc "Run Claude Code autonomously in Docker with git worktree isolation"
  homepage "https://github.com/hansvd/homebrew-claude-docker"
  url "https://github.com/hansvd/claude-docker/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "d3cef5be725117c6bfb54f56a3e15846137918d663e4411a0b5f88ebd133a864"
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
