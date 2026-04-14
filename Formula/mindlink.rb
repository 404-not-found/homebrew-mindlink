class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-2.0.0.tgz"
  sha256 "a4402fbf87a9eae8a6111d370dac5343cc5e259f1aa25ff0e149dbf783a9ec4b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.0", shell_output("#{bin}/mindlink --version")
  end
end
