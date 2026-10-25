class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.1.tgz"
  sha256 "5994322cb936d84d9621b0d0ecb023ebea306578635b15ca4c8cde9a14d24248"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.1"
    sha256 cellar: :any, arm64_tahoe:   "672dea79baa4a9e5384e80dda8c6b0dc1892b1e021b68464f404f39df14c66cb"
    sha256 cellar: :any, arm64_sequoia: "27174af6b9b97fb2ac0d42d1d8eeb638de93b577b932a42f541f605c5aaf7394"
    sha256 cellar: :any, arm64_sonoma:  "41f2255a2dbac2ad90a3ad5fbf2e9dc916435e7eab4d968ee8d74cb87bd0f596"
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
