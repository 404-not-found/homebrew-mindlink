class MindLink < Formula
  desc "Give your AI a brain — session memory, cross-session sync, cross-agent context"
  homepage "https://github.com/404-not-found/mindlink"
  url "https://registry.npmjs.org/mindlink/-/mindlink-2.1.0.tgz"
  sha256 "bc9f966b6396dd331e3890788f8491da1ccc88a8820bc27577ebabafa40b0dea"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.1.0", shell_output("#{bin}/mindlink --version")
  end
end
