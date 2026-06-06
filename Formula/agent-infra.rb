class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.6.4.tgz"
  sha256 "27496bd044f6905419d6c017b35751fb02027057c4909a623ed9761040605110"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.6.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "4e6b4020745b87da3b41bb293e6d633ac8641968ef43bd2a8589fb095ca20106"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7b72240bf551b210f27da3d38eb8a9329aceb8c4ab23639e474b70fdc4813a57"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d538c6bf5ee06d1f09c2ee9d40aa6e05f07b752797365a52fc1418ea4a99221e"
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
