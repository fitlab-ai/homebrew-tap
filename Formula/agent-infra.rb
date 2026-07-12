class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.8.4.tgz"
  sha256 "ea448410b70e34de284a6b00d77b0062b5a0517a7e13bbb00df1bb2196466da3"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.8.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "03539fa34d6d7791ded3e1bc2c1ebbea986dea10e068c6d45955f281f8a2e3b2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7c59c9e54279f54ccc087376561e0c9d5e5049389d8263c7a8963c72e8f245dc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e8f7edd21c8f4be11378e5eff2828789c35d3ee21135ae4dad3abbd4ca989f3d"
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
