class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.1.tgz"
  sha256 "f09b44963e2044b3dcf02fb81118294a4fcf50fd6244d3ab3e6c637889fadcca"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.1"
    sha256 cellar: :any, arm64_tahoe:   "f6ca6b3db63d64f2756f3f6a8e368969b69aa8758f35042d6310812fe7021bc4"
    sha256 cellar: :any, arm64_sequoia: "59f7fd402d14c79a965e207f778206bbe76faf9ed8f155d357ad7e6ad6c96010"
    sha256 cellar: :any, arm64_sonoma:  "a15f581510d9eb34f7f201caee2960afd411794978dd3ec60f06b90a94ee50b4"
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
