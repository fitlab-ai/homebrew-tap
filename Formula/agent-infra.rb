class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.8.0.tgz"
  sha256 "3d450dd39c254377252e6dbd5185f28345b2bdf2a6548297ed52ab415c4e8b2e"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.8.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a2f59e63c8e5fb00d4b2f4950ff2d801e7974b7579419cb9a6a119f23d39638a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c50d4caf469420abf4401d56b49e626d544235b39c04a9f1d378b6c5a81361aa"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "16539eba7ff286902702c8e6f81260ee16eaa78a9dcfcea49401d1bc892a420f"
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
