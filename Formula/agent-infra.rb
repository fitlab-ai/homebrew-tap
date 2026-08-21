class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.7.tgz"
  sha256 "d8f6b5bfe5f1b0fe31c6e2ef73a93072c0ee2c0abee76dad8e8e39294bdbe990"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "481487efbc46ddd1294574634c7f069930685449a1f1514ab7979144bf0cdbc8"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e0cb75532479bf09d344993ce04bcb97ce558a7cdbf393dd439cc782de43709c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "2415ea5cc3cb7ac4f2525a7621a662a4c1e4de056cb074afad4af338a06dc39a"
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
