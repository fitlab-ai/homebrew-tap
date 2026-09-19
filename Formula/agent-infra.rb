class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.2.tgz"
  sha256 "35ed1b0f54045f47268ae72bf95947414220da956b75403b21bbc2248dc60821"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.2"
    sha256 cellar: :any, arm64_tahoe:   "5e1e5a040d104ada3a976131b7b0b7c12ecd98899e765eb84c16582c3b671024"
    sha256 cellar: :any, arm64_sequoia: "be46ae22a0be5b0cac712069507bc1d7862f71e5f78d1ed02ae575831e530a86"
    sha256 cellar: :any, arm64_sonoma:  "d03d8e720fce58abdd2d5e7bd7707079b53df2fd94a8083c884d2a035f9b611b"
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
