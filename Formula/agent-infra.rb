class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.11.tgz"
  sha256 "2fab61c8570afa05661b6654eb50853163d0ded7d13df73374a7491c87db1d0b"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.11"
    sha256 cellar: :any, arm64_tahoe:   "9ad2e1957633140f49d44cd975a09ccfda72dc6400408da61f0e0421970a00a6"
    sha256 cellar: :any, arm64_sequoia: "702601c216537838bf9dc416543a40075aa4c95fbf6c53dfc766931d59f8cd43"
    sha256 cellar: :any, arm64_sonoma:  "53f64e1b9a3c86823abd4f01485ce8b5c1bca4a7e19002b6ea191cd1cc342d6a"
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
