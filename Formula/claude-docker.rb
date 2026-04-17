class ClaudeDocker < Formula
  desc "Run Claude Code autonomously in Docker with git worktree isolation"
  homepage "https://github.com/hansvd/homebrew-claude-docker"
  url "https://github.com/hansvd/claude-docker/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "814840f64cdf6c8883d093ec1020fd7ef3bc3f235372a73fe42de1c66d1858fc"
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
