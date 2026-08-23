class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.8.tgz"
  sha256 "beb63e8f9623a2cc8a7da283c8e92085659d1a949aa990c7340d940a88ab3ea9"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "d749e51e33dc73aa339ef7576409b6384a95237ac037d959594cf4a5af0f5ae1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6851ac5e286a66639679bd57ef9b5c3aadbcc863c0a2e9bce8f8d056804f4d67"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "87d599e7329efec66e1eb279b46a2ed7e0bf97444fcf7b3b1d9754e825a1d0ca"
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
