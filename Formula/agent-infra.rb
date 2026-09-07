class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.14.tgz"
  sha256 "7407600caebc054df3a32a57bb6e8be3989264761323e7572ef2c0b9a8ddaa24"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.14"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "bd8e79014fb906bfac8d67acbe7904b2f21db0ee687a96247aa69c7b9313c019"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ecf7cdf39fc413314271a32554dc7b214e226db0ea6353bd5f96f4a70fd8e035"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "4760c046b3a14ca3820e58b85cab27a66feeff1b5413c7e3323b5f4740e5de9f"
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
