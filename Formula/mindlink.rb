class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-2.0.4.tgz"
  sha256 "47818e67ccbd4798b88b98063bbdf172a0408f37123767b1514dd9c743b86b0e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.4", shell_output("#{bin}/mindlink --version")
  end
end
