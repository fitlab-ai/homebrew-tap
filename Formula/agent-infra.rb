class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.5.tgz"
  sha256 "4bc1123fa7cc4bb94dde4a44cad90dfeb7fe8cc038e71078b46c36194dd08bff"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2947a6061a70c26684ddc5653975e996952d989f62f58eade4ae7f3982adb905"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "12a8d830206346d810c9c960f6656097095756c1a15500d2cb359ec9e58a8e46"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d4b896002f88b52ebf1b56e53f4674ad74745b9f514e3ef3607e3732dd035ea3"
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
