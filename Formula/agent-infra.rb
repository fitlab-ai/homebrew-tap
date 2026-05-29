class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.6.2.tgz"
  sha256 "41fa3d5fc56e2f1c133472b04954a53d9d6fd93d045569750224f9deb6175e90"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.6.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "8e7df0d313d805fcf242ea7e7a4e44e33fa351e00489e886e67b993cd76b8b07"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4096bc845062b3d226cdf70fec73c6ada612aec445300af9da3af94aac764cc8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1e13674663ccdc32517b472b0e1a732a6a0f02ca36552a663ac26f387a0cd111"
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
