class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.2.tgz"
  sha256 "fccedf522c41937f763fb682253e2b52304253389d711b2746130b72deffa96a"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "7f71d38f05959830750f4313c1b538ac72375ce8a82c05d538e3bd2eb2b96f53"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6e9744b295223036a89d61b21c9dde2fb10cc1d72c828aaa0c683bb0860d9d03"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "b64ed07e617863cc98c83c6ba334d30358f89f44bd5c6ae2b7295361ea3106b8"
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
