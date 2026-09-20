class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.3.tgz"
  sha256 "de683af3bd194c939c0f96c44b28bc14c52db1c300d52f846c7ddfd266f5ec72"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.3"
    sha256 cellar: :any, arm64_tahoe:   "f3863fdae663018369688520e7693e68419153d6a1c8d18b312d48d73d27ec79"
    sha256 cellar: :any, arm64_sequoia: "c52ab74f5db0c41aede30b1de2d9ad8863eef9f97d47aaede5b78d058ca65b07"
    sha256 cellar: :any, arm64_sonoma:  "a7a5cf49a2e391a501f39494983f6c50b884a0da43d2f55b653b6fe423226cd1"
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
