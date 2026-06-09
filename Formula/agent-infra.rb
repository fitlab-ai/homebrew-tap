class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.7.0.tgz"
  sha256 "ae0667cc7e7fb7828dd395e12308b5bd101fb3b44f8c75ee8021c63a7eef5bc7"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.7.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "942f53367e2a984b0a307fe90defc0b1a53a74e02bf07a2a17f39c2dd9a3c87e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a4f45ed5d0fa07a8cce8672b77e50afb83a5b39a874adefb3ac5baeab21bc940"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "776bbc9e6f483c5aad733681ff2a0c374c658368ba8fed9a6c0fccb191d5017b"
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
