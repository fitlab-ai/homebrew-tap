class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.12.tgz"
  sha256 "ab8712f13bffdf143fb89d8888096029345b030a84d303d32fe7c810475499a6"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.12"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "80375231730f77cec326080d05ab8aba004fcb675b4abebc1aa1a6583d99a703"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "13e0e5fa3661d35f76002cfeb541beaae33f3f983f9d933eb750e0ec7e6755c4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "684c8a16f6a2067d5d8c0633d8d44345c5a11bc4c4ae1f744c781237e544590c"
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
