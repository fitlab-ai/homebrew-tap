class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.6.tgz"
  sha256 "62b2a338e940e701142d532630c1caf8ea5cf669ce28fdefd0d9023e9cc357c2"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.6"
    sha256 cellar: :any, arm64_golden_gate: "f773e939a9892ea550a79ea3fd69ee4ff6ea708a11b1e7e727c9df07c42340ca"
    sha256 cellar: :any, arm64_tahoe:       "ffca8b65ded416ca0c5ec1f38838d33aa695215a45ea3d568fd76203e7616c69"
    sha256 cellar: :any, arm64_sequoia:     "27b9a9e6a72185525162967ba0612bd6b7ede34d1dd27ebfcdded19380d6304f"
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
