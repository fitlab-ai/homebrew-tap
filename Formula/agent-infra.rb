class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.1.tgz"
  sha256 "048e409f121d788be69ed3126136761fb293a539e41184882730e193950c5db2"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "0a36870510215334a50c911b441e72108ffa0d99d7439fc9e46f00af407ffcd6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "07bd7130c6843787375c45af089d16321c12d563e0b384d0d9106cc3ff141409"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "34427d8eb9b729e3e8e7441b40ca9150f813f9f0655785b7dc12a2939c4391eb"
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
