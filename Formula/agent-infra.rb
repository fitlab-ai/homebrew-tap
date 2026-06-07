class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.6.5.tgz"
  sha256 "afb8d1a3eceb520f6759447b73eed41adab936e7b3a7fa0c647dc4e69bfff34b"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.6.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2f2a51044c3f5865a992333bcc247438b05fa50f705b744c71e8d6c1b3bd0fd8"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a2b6c10f43b77457620982506048b3cf0db9dd351bda88f7016be8e32cb84902"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d9e750cb0bd012e452ff473742b9086cc6bc9a8ff7b035d9cbd26802e8d2588f"
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
