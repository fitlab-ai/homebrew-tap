class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.10.0.tgz"
  sha256 "02fb8371144090bd07cda58808669efd91df2a9b9df0df7c744fad47b802f340"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.10.0"
    sha256 cellar: :any, arm64_tahoe:   "c1063e1d824b7804c03f678525bd7f6038539cbbcb3f4b102bf9ab7a68c1ef14"
    sha256 cellar: :any, arm64_sequoia: "3074dd2c091ee2eb391c54afa603cb13f5fa995ad7879de75cbd61eb62a43f0c"
    sha256 cellar: :any, arm64_sonoma:  "71e173890ffe1e63028c34f2467e5e8837b23409d325d095f7f42b09b5399e9e"
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
