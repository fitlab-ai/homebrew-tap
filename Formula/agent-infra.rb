class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.3.tgz"
  sha256 "8dc4230eb5449b82896402d458f0994d87107280976583329c2312d7a29729e2"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "eee84befb0fc05c69517253cb13e3b64475bef1fca779d474f06a1492a41421d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6e5eac221366abb2d0d141fa55e650891fa253190b37c9feed03c316edd9e4b7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "9f7765139299e34bcc9ce6ffd3d8c818eb393e1539b86205eb0f4cfc3e3ea4f5"
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
