class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.10.tgz"
  sha256 "3aee119d2121d898cc2202bbbb768efb062510b6cf301458af8feb208c6ec4cf"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.10"
    sha256 cellar: :any, arm64_tahoe:   "dde03c068ab4221bf3580ceccb033f5751bc90cc6f05c1915404dae81642f193"
    sha256 cellar: :any, arm64_sequoia: "7f18565e80c7c77ccd0f6929625976a1802d38b8124c5738af8e6bd55b2a8590"
    sha256 cellar: :any, arm64_sonoma:  "24aeb9329236573deed5a403c7c75350b82dab57e96b3531fe8f432e5310219c"
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
