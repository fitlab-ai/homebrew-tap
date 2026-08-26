class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.9.9.tgz"
  sha256 "730c09bd3d33c7ff12894f2784acef6bbed39140a277deec5c06b3edd552207b"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.9.9"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "33e58600c63800a4dec5adb99439a427845689d8e35ccddd05427621d79fc129"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c2c08663134c3f0f9d2dbcefb84d06d881c014012428d4754b8d6f44f84f0085"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "b7cb9ee65ccb14a2e955346779a5e92a07e2ada9b7578051f7cd6ce56ee6c346"
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
