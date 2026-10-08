class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.12.tgz"
  sha256 "badf38cceb86f403241f8c46c0e73d12f6bee67fb8f251780afa3418f2eff601"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.12"
    sha256 cellar: :any, arm64_tahoe:   "4ab98cb35cd6b0bd4735d608db921ded9d1e17eca89851890a5908398cea9387"
    sha256 cellar: :any, arm64_sequoia: "3dc253daa52e9631eff7da8c969890c96366bc01371ca4adf47f3373ac78e0ab"
    sha256 cellar: :any, arm64_sonoma:  "cd3eda8952fd67c297832b886149a3bba117707ab8e2f07a8db26d1198d96a1f"
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
