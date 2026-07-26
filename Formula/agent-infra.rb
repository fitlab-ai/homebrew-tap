class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.1.tgz"
  sha256 "1e07f95a70d6ceaccc98c68d1f9a8766ffea592df3c3832d1ae1e3e215245a6d"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "0665440763c4fcabd889adfd90fa3a60fa967b7554ef5052d1adf8d338a6dc44"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8eec39a03220c55f6566bbdf1dd6cd7d76487839d85bd700a21292775d675f37"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "01f3cbde84d6028d39dc44d657517575190aa413ee49f3b89164bc48f8f4d507"
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
