class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.7.tgz"
  sha256 "3af8a7234e43175c58b0ae5cf5a9e9665a95abc8127c13ee034c48b6dc6679bf"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "d979570324876651c2a8dd4be188d40c192e57378d746da6a12fc212784982fc"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8c2c6dcb3cbdb15e3dca256c5b43bcad244249db1469a30ae186eef17e322dfc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "8de4c80ba80ddfdf274677c4bc64b196b60fa1e1cf65b4f8f1f452b310c02199"
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
