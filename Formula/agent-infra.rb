class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.5.tgz"
  sha256 "a1e7e670e4ddf714e4c794329c71c5a4cb5ba50e9e00fb5551d7d5b0da1a798b"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2e229091c75011db02fc2a2eb3e8d7732233fd8cebccbff81911403500d24007"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "047793e62167cf576198a2ace45ca8dd2c698a76b76a2c589c4216b7fd460c03"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "a66b7834f7b475d3cd1cbd832da1a8a52376d93c58f0e7addb54f3febdebf626"
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
