class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.3.tgz"
  sha256 "d9b26d2046bb375135549ca5911934ffe72cb4350a9e5a71cb882a5a4c444a51"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a9420f89348be1e563201056ecbbf6d07baf906b1e520eca78b25093ea787565"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b31e1c226e9f944a09953c7ff36cd0883c9705feafac7b1dd0f16abdf60e1c53"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "10f3634eb1a304597b08056e537708388563814431b610261c8862862612cbb7"
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
