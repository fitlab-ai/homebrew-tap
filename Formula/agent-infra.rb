class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.10.tgz"
  sha256 "dc3541cecd19aaf873df6cfe43d94259075713e752c4b0b88ab6b4e2fbbb8c29"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.10"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "dd03b93dbf8837d6901d3f27f5e871cf385fa246d9a51de5385ede29f3057ba6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ec6c9c3a5c0302bb5f737ff1c39b04537ca48073a37c44b7effdeb967a1a4df9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "3c4c5125fe3aae86dc17177bda996fd75ff2591c819d55d43d81b3f0b92b5fd3"
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
