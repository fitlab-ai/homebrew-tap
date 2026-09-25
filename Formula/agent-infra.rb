class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.6.tgz"
  sha256 "a337dcb9ccb2f6b29ca27b899f882d59891f678483d09855191021411600eba2"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.6"
    sha256 cellar: :any, arm64_tahoe:   "2ff16395da5ad2196df5961d3b8ded40d64ea5c74fcdb6fd9cb9daed591dc916"
    sha256 cellar: :any, arm64_sequoia: "e229f4a1869a96a5f97b1360b4878cbfdbd80aa4bc7f075cb77c4f5ae8d21fed"
    sha256 cellar: :any, arm64_sonoma:  "39938106922c77612543169f93084e535c8690dc82755494b610db5e091f7052"
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
