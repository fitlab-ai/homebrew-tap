class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.6.tgz"
  sha256 "8bcb8ec300b43436e47ac2db243577d3624fbcf9f941bf052e6991ae750e6dbf"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "bc50572b5468bf069ff0cb87a5df78a463f8fb3bd8fee1f6c6b91b117332c79f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2f61e81dde157d616c9e61e5d2e068f9e76141b1216bce65dcb2fe6d4509a22f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d0c56854892325a8ac92ec323cfec1014ca871f99ae296c833dcac47e513f59f"
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
