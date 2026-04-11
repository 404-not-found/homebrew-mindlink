class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-1.1.1.tgz"
  sha256 "e4517068e67707ba33603e6698fb8d495938efb52cbd72c8a4137e87d9dea3b2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/mindlink --version")
  end
end
