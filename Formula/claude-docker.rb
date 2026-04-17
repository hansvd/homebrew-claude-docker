class ClaudeDocker < Formula
  desc "Run Claude Code autonomously in Docker with git worktree isolation"
  homepage "https://github.com/hansvd/homebrew-claude-docker"
  url "https://github.com/hansvd/claude-docker/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "95d8db6e22b6bf7ed2f38631cb7310e2207212c9aba5385b5099380756854997"
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
