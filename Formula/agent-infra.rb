class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.12.4.tgz"
  sha256 "b83e1959b90e97743e53a7a7758c10006ef5529834974ddc70829142ea8ff2ae"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.12.4"
    sha256 cellar: :any, arm64_golden_gate: "efefd13f78cb18602f9333572b4a1733f293e057832ecdedb57caa3d05995fda"
    sha256 cellar: :any, arm64_tahoe:       "fcf75b11e8e7a2ab7698fc81c11c3af6e2f42b65dec0daa98031ea851cee954c"
    sha256 cellar: :any, arm64_sequoia:     "fb5e80e12597760baf7a7a8a6986feec03afe5471f2c728f0af622ec550d628a"
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
