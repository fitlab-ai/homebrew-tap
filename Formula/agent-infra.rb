class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.5.tgz"
  sha256 "31544fe1d7720456df3262e98513dc905ab270305bf3a3b5e565b06d189dd2ab"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.5"
    sha256 cellar: :any, arm64_tahoe:   "6dbcc66f1c51b34e49c9c3eaf1c97e54f653f5c5f4506f1d039c3360d52839dd"
    sha256 cellar: :any, arm64_sequoia: "9fa3e02071b71c366007bc98b3335e93b2260afa7f4a92682d5bc3a2122d6a6b"
    sha256 cellar: :any, arm64_sonoma:  "5f63d014573eb45d18973f73a9129401e4a2c8047e4e3dfa860edfd40a60011f"
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
