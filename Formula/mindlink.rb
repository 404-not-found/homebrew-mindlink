class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-1.1.3.tgz"
  sha256 "bda38d4433e50fd2c977d8b1eee4d8c85c86d4d974d811b21d2c649673c57cb8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.3", shell_output("#{bin}/mindlink --version")
  end
end
