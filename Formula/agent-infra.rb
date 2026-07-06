class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.8.2.tgz"
  sha256 "5069f0130f8cf80d7da82eb8f29b28ccca154e07324c61e68a84b2e01f209f36"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.8.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "3786edc4040a7a28f3ed17d29b08857d9950349240e48418654c2671c5a2a31a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7499ae5914cd68c8bd655f524871d007455a2044dc7d39425efe6a656a844298"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "69182761aae61d6750f5cfe1e11b9a216e0047a7151867dea844aa0c0aa978ba"
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
