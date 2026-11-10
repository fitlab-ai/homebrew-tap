class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.3.tgz"
  sha256 "2b94537aa1aa09b01e79d8ad61a1b05957a28476ae97f75144389ccb67ecd6c4"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.3"
    sha256 cellar: :any, arm64_golden_gate: "b814be9e24df3359772d0fdd469765e93f76d3987a1191e80e7724c2c90da0a5"
    sha256 cellar: :any, arm64_tahoe:       "0d0159b1d89ce4de31f53731fbf75a20975e8765ffdca9e06095840946165848"
    sha256 cellar: :any, arm64_sequoia:     "1eb4654165d3f25063e49b40c3517a5ab717b5e5ac65ff9be6891747f417e4f9"
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
