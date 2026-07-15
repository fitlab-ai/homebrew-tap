class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.8.5.tgz"
  sha256 "f2f2287af8f43d6919132da9b3eedc2461e3642d11b61ae31a0a4951688a8f36"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.8.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "8975feeaf2f0ba05ef35fdb556d3b506e0992a8e42ce7eaafbe17feb0668be1a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c252c1276dc436ea271e215a1a19f09856f69d728e4f391d47e4b6b850f79c64"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "965210ea796b47ac7ac4ff0444c2e12adf591387dc8ec3c6bdea541f89fe08ee"
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
