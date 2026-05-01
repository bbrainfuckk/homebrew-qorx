class Qorx < Formula
  desc "Language and runtime for local context resolution"
  homepage "https://github.com/bbrainfuckk/qorx"
  url "https://github.com/bbrainfuckk/qorx.git",
      tag:      "v1.0.2",
      revision: "86b7a40ba7f5bafa67cd3a15367fc35c0cc6d760"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "qorx 1.0.2", shell_output("#{bin}/qorx --version")
  end
end
