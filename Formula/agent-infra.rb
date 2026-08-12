class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.4.tgz"
  sha256 "ce529d8ce53667af47dfd5bee9a2af5454f0d099353a0baef69e27d565f5416f"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "9e8f8e80a619cfda2d9b239fa27a42022242d459509b1f541475df95bf76352d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d341322f5c994b6e90d19fbe9a200864dcf027c9a3d7ddc413765f6610db83e9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "6e5e9c265ee22238b55192ac64cec9315b620953dbbc7c8cdae4074de5745c56"
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
