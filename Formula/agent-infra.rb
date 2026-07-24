class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.0.tgz"
  sha256 "cd7e191d2a2d6207f165f8fa16fd91666f18764fb08b282712da9ec07bac878e"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "e61a1629e6524dd42016aadd5997578e608dce3e3966594148b97ac86ed99963"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7cd234ad2759ffba5f43a56dad60c64a559feedcecb4b4e6bc2dbc5ff79acc55"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "63e09365474ce874b7d867fab85efca656d82b06f932111a368edd77a82137af"
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
