class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-1.1.2.tgz"
  sha256 "3a0b9d323392ec48c997dd878e53308f902d731206877afacfe1bf20073d859b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.2", shell_output("#{bin}/mindlink --version")
  end
end
