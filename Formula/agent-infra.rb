class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.15.tgz"
  sha256 "f759ae65bd0f2b71d0917bd610a309f0bf0124b83359ed8a790014ee154f1a84"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.15"
    sha256 cellar: :any, arm64_tahoe:   "d3f74f12a2c55ecf425a4433e1c01b2667d3bcea181f48eb6600c73ff922ddaf"
    sha256 cellar: :any, arm64_sequoia: "ac8e64dd6fc7b8eac536708d734fbfce4b73bd142e7d45107d5075f55cfd08b9"
    sha256 cellar: :any, arm64_sonoma:  "3acfbc85226d73cae584f345a713af1a66d1f01d81984da3e105213fb0c3267b"
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
