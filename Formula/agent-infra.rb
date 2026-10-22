class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.0.tgz"
  sha256 "7e04d0650c9fe67a45ed882ed0e18db79462d36a4aec850c07c6876398481966"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.0"
    sha256 cellar: :any, arm64_tahoe:   "85b4a4b2f9f080d48fdc1c5a7bc1944e80d7dd2ae48a43bfda5766a0d1d077aa"
    sha256 cellar: :any, arm64_sequoia: "8fc87d079fb9c4b6c4cdbb33490c5dbcd44160dea7c796b431c4932f1dfa6566"
    sha256 cellar: :any, arm64_sonoma:  "5c0420ea58f15d606e41673961984dafb91f115333b5cdad42e00e744134c908"
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
