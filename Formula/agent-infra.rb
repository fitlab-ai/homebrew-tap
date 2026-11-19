class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.5.tgz"
  sha256 "a21cfe59a78f3eefb4f0099ff6ba3081a8a4c4850608a5537cde8d93624b95e8"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.5"
    sha256 cellar: :any, arm64_golden_gate: "da6b0b920cd783312e9e910b7464a81ba351f94e2946fc692f434a4a1afae5a9"
    sha256 cellar: :any, arm64_tahoe:       "65b8c30d3c1781a94cc301f5e866f80494951d88380c1a3ac9313fd4ed50ef4b"
    sha256 cellar: :any, arm64_sequoia:     "b14abc88b871ac69617fc7e37a51dd08ba41d3aa0c5b8dda37bc6cbed7d00a22"
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
