class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.2.tgz"
  sha256 "59b96eda3139d57d508a66382465e1cd1b5606437fec453ab0097e8f6cb84278"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.2"
    sha256 cellar: :any, arm64_tahoe:   "4aa768cfa4e40257579749aec42ace743c16ec2cbedf84deab4431af4657fc75"
    sha256 cellar: :any, arm64_sequoia: "2131569ce78da62d6a677c9141688670eed6e86d105ade3a2032513be343b09d"
    sha256 cellar: :any, arm64_sonoma:  "85d72b01f3dcc6d0775ba1176b90ffed9b9f767132dab9780618b2e6839cfd28"
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
