class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.11.tgz"
  sha256 "73e5ac9242f2056b96b7026e836b420584ae1fabd5e5519ef05a49674b28f25a"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.11"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "d9d2cc5c1e044a41fd3439b120e0702b1dd0e5caca8524f1e49f71f6ef2ce402"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "43ab8702a922a06114c583fabc0c22aae371cbc771fa9a4a2fc8a8205fe42f99"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "8ff2da65adc51f0d52611eccdbe4059f4da7ba39b7c65733206efc91d293c16c"
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
