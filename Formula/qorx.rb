class Qorx < Formula
  desc "Language and runtime for local context resolution"
  homepage "https://github.com/bbrainfuckk/qorx"
  url "https://github.com/bbrainfuckk/qorx.git",
      tag:      "v1.0.1",
      revision: "6391ff29201670fab5a55d53ab0245ddbc3f892e"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "qorx 1.0.1", shell_output("#{bin}/qorx --version")
  end
end
