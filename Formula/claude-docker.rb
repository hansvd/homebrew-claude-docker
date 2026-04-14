class ClaudeDocker < Formula
  desc "Run Claude Code autonomously in Docker with git worktree isolation"
  homepage "https://github.com/hansvd/homebrew-claude-docker"
  url "https://github.com/hansvd/claude-docker/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "f44547fb2d74ac0412aac4b2279cc54702353f044dd06603eca5376f9bf07f7f"
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
