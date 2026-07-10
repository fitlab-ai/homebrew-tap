class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.8.3.tgz"
  sha256 "48f197331d7ea187c901cb96364941168c137e53a468cea742e3196aa0ba2235"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.8.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "bd3a83c45c6647cb14e306c3296bf37cdbb277fcf1434a2a1975941bdaf71d7d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "924889bae3e53d8651aaf2dbe27afec51cfb143e3b1f10b63cb5b7e38006df65"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "43995bd029ef5d2948876e69d97077b1fb9cff3513fb4ff425dd406eafeac7ee"
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
