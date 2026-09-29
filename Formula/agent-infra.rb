class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.8.tgz"
  sha256 "8c8af90d4a27620d0ee69441551a82717f76da7e274b25e98b7666d43bfbeb52"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.8"
    sha256 cellar: :any, arm64_tahoe:   "c2e5ea5f658fcddae30f1c7be15c8f5e2cf1919477a315d41af0cc8dbf90daed"
    sha256 cellar: :any, arm64_sequoia: "49e6c917bd1fb0a7ca567064760961bf67c086f68d9b7492d8dead67f3a97fc7"
    sha256 cellar: :any, arm64_sonoma:  "d26fc5f60c808ad3b865983f11b5e135f82dd43d70baa82617c282c92c986d88"
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
