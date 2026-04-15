class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-2.0.2.tgz"
  sha256 "7429af6734f7a8e06727576f0955860c223cd0e437392143ec47afccfdf29e05"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.2", shell_output("#{bin}/mindlink --version")
  end
end
