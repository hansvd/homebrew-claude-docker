## Install
brew tap hansvd/claude-docker
brew install claude-docker


## Update
After a new release in the claude-docker rep update Formula/claude-docker.rb
- update the version in the formula
- run `  curl -sL https://github.com/hansvd/claude-docker/archive/refs/tags/{{version}}.tar.gz | shasum -a 256`
- update the sha256 in the formula


Update the local installation
- `brew upgrade claude-docker`