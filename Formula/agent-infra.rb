class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.9.tgz"
  sha256 "af4104260dd447b53652db8290c3435512334cbb713bb18425631157fb1ec82a"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.9"
    sha256 cellar: :any, arm64_tahoe:   "482d12b1ae21f44614638dc8d449cf6ed08f8ecc9cea2de0a6e1e361d2040020"
    sha256 cellar: :any, arm64_sequoia: "3d3b7214f50f537ed0885d210e9fac86d7ac182c5d7336d0f313389cec5b3cd9"
    sha256 cellar: :any, arm64_sonoma:  "d305fb929ef7c0f13d35ff8747805d80a00156938c624fd51b55afdab5959825"
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
