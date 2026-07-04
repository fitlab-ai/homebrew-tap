class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.8.1.tgz"
  sha256 "526291fabacbe58358423e45baa562586e04b2e869e000bb2ec89b2028455ca0"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.8.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2a96da935285a7d2b7a14f7914880bd505cd4d1eca42400479f4be7e9e528539"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "97ede81bf65fa7ea8bf4f7b8c8bec7d813469977c61333a0142963c57d703e0f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "0a636a453331744dc9f343de23b31b20948612fa653e8b0b26a822980efce172"
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-infra version")
  end
end
