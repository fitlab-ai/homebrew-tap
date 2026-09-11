class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.15.tgz"
  sha256 "896f80963e9930389e20407bdf81cc034181dfca47e20afd09e95a613471ddbd"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.15"
    sha256 cellar: :any, arm64_tahoe:   "9becb48d58f7873ef23f5a389c0e707118fbc66ab2df4a00eb38684ea3a335bc"
    sha256 cellar: :any, arm64_sequoia: "a6147e3d33f2a63c9727f741a2cfc7b9f3d08d51a1ae9e6b4936c51cecc0579c"
    sha256 cellar: :any, arm64_sonoma:  "49c30788379d576d2a27abed395a767400f16c828a48e7bb17484487ab320288"
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
