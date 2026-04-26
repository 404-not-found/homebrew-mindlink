class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-2.2.0.tgz"
  sha256 "76e66bf945b70807a6451ed905796fd89c8cb62e7e87cffed82cac7bbc65abed"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.2.0", shell_output("#{bin}/mindlink --version")
  end
end
