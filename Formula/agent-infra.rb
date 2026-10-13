class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.14.tgz"
  sha256 "e7f85bbc320a8bb87f04c14c30f50c10b0030887ef7af736e3b41947403d6e62"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.14"
    sha256 cellar: :any, arm64_tahoe:   "77523467136093d9048651b84d44d7af1abc4da37a75f5ebf212873eefd9cfc5"
    sha256 cellar: :any, arm64_sequoia: "624d009f64c34164fd5cb4363d8b002caec20bc71d978e6d02101143e0eebbf2"
    sha256 cellar: :any, arm64_sonoma:  "b066d0897bda019b70f72afcc04cc65ff00127124e1345e20e026900691bbfa7"
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
