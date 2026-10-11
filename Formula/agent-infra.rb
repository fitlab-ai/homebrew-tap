class AgentInfra < Formula
  desc "Bootstrap tool for AI multi-tool collaboration infrastructure"
  homepage "https://github.com/fitlab-ai/agent-infra"
  url "https://registry.npmjs.org/@fitlab-ai/agent-infra/-/agent-infra-0.11.13.tgz"
  sha256 "70d7767a78fa70f3bff38ee4c59334cf905977a4b232d9f91a52b2dc9290364d"
  license "MIT"
  bottle do
    root_url "https://github.com/fitlab-ai/agent-infra/releases/download/v0.11.13"
    sha256 cellar: :any, arm64_tahoe:   "c9358ff6ffa532d8502fe76e9b38e2ad5a8328684a8234bedac46be03d617564"
    sha256 cellar: :any, arm64_sequoia: "a08bd4204fce50361de2f4a705fab538677f14ecaad300e4083047bc89459fe7"
    sha256 cellar: :any, arm64_sonoma:  "ce59dff23792ab5af359ba7473b5813003759ff0bc98519e86731bd9ad3c3333"
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
