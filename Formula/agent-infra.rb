class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.0.tgz"
  sha256 "ca267e26bdf85dc82883a4856c3387d795f34544b478a027929678b4710ebd6c"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.0"
    sha256 cellar: :any, arm64_tahoe:   "955f82381c4347dc1ca8de4c79c1266decd6fd17c492aecae39a0ad601e8deb5"
    sha256 cellar: :any, arm64_sequoia: "7ab5106bc64880ba4d2468bb15809bce2a0ec12a5ece72163fe5ad7b28c4770b"
    sha256 cellar: :any, arm64_sonoma:  "3eb54c6e506951378680a8926c46ef3054cd9e2e738978d5e5274231b298ad18"
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
