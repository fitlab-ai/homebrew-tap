class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.6.tgz"
  sha256 "b758182471c87f4223c0ebb1c5f9628ddcb487cde07096d0337bec834b639228"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "f4c98cb77f34b3ac77cf911c13927ce88a84897f132971cc759203465986212e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0c8a91bd4672a592749e14f88466e91050dfbe7a7c917efcbc5a027c48e0be22"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d09542fa32f0254502a82acbca43d0267d66f13b374290b101b50ff1e486df3a"
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
