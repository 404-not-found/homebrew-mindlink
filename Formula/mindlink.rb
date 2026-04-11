class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-1.0.8.tgz"
  sha256 "2267091e842a6cfdf79378d6f1dc55e2a3bafa9cfd881429a50bd16dafa89ddf"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.0.8", shell_output("#{bin}/mindlink --version")
  end
end
