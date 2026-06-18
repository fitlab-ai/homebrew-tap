class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.4.tgz"
  sha256 "662424fac144c901d6f63e93af3f81c17b95938025c5de7c57e6505d52e1d8ca"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "62df85ac099fad316eb00166f86076ea497a0214016f688dfd3dff9fb8d5129e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6cc6302b268c34ff8503184fbd7d6b69ff1b34d26e802a08417cd9c80ee825e2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "51a4d6432863ef0588bcefc9ec42f4bb37bced42fc9c4d41b86a61365eac4c34"
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
