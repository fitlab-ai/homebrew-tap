class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.2.tgz"
  sha256 "c899152e173da168d83c1745291876dd68450181f3557843f319213c608553a7"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "231884938af4470cb4fa05c2c05bb13e8d0b37977bc820759bba2524a541d63b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "78cea3be50f7397165677efd7baf18057c50e23ef3527765a890f1c9775cce44"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "b2fa69d9e6bbd0ce524deec5041c8f40cb5fe5ae274e85803ff9658ccd2922c0"
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
