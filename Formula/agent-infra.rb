class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.7.tgz"
  sha256 "7528cf8900642bc42474ed5f62b1d991f0b07e6fba920db1cf77249c7fa7965f"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.7"
    sha256 cellar: :any, arm64_tahoe:   "b55dd67e0c297e9e27281c006590eb309d9d32e83d03cde1a537406d17272956"
    sha256 cellar: :any, arm64_sequoia: "c5fe09d344ad3c1a140bfbe75a004c896d5107124066434f31384a40872cfbf5"
    sha256 cellar: :any, arm64_sonoma:  "aa2f1f396dd747ee573170202b4da5bf2cdf22acd31cbe5bfed9e6a23ead76be"
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
