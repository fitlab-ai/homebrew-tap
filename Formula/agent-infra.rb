class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.4.tgz"
  sha256 "f73952ccbcfa1b07441381a8aee6095d054c7344ad3c1465f926333b903dd021"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.4"
    sha256 cellar: :any, arm64_tahoe:   "8bdf540077858bbf1dc675e06cebb6867fe445c44ff00435d1256d108c23d62d"
    sha256 cellar: :any, arm64_sequoia: "028081e02dfffd8ab8e13fed4064cf8a56c5f237991b1faea6d4f04cc98a358a"
    sha256 cellar: :any, arm64_sonoma:  "d3ce6e9e3ef7a7e55ebf711c299453388c8ce65f504f36b142a6b217e038859f"
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
