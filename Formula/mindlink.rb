class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-1.1.5.tgz"
  sha256 "d9ef3484145e5f7d5f6ed612379280765fd323dfbb6bd1046c5fb21a688af50d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.5", shell_output("#{bin}/mindlink --version")
  end
end
