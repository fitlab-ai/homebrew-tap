class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.6.3.tgz"
  sha256 "4146b7625d88fa4b12995ad911a97643b4c5e9b2368e6d465380cfc004c97dc4"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.6.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "5805fa8e2439bff1fffe7bc1b67000dac3642bc73fe6c9476920786ea65b39ca"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "94987f7824c4a7249f5564da4557877e1e0bd60b6024aead9945b42440f22700"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "5620a844686ecc51d676987311f511d22c61563a42ce83f30f4ef3feba6ef9ef"
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
