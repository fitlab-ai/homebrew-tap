class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.6.1.tgz"
  sha256 "cb7492819b1c970aa23ab99f474f3e870ab6d6de27eb9dad824c06f7ee08f70c"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.6.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "7846f71e1d77e46c763f895d4f91a820ad6ae694b9e8e9d4c7283d5999f26f12"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "494d40f9cc2f56faed9c1ef01a9b9de25a0b2b8cf76fac8dbead5f01240be84a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1ff4cb1aa7bd27194ffb8de7ee93c85eb9630da81e5eaec94f0a5456615245e8"
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
