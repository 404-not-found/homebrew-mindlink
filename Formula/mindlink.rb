class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-1.1.0.tgz"
  sha256 "2e00bc7e3e54f8a26e6c24a58e5e183dcc5447eb5c7c520e5a2bc0328fc1d3e4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/mindlink --version")
  end
end
