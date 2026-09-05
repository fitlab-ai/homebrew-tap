class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.13.tgz"
  sha256 "00027068b95b90f9246e1fc7c2bea0f7cfbb35d7b0afc320dc4e51c1411d471a"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.13"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a4aa3dcf0df3f6964dfc51aea66af268cf34dc0eabd38f7e5d9ccf4048bb1f5b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "cd31c9e50a88e1a80ad509d37068a069ec929397209049e635e01dbb9a20c87b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "126437e8bcd2ebdb697e98986d7173044c5da2bcdc5f469b70b3c90142efd4d1"
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
