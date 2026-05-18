class Krueger < Formula
  desc "Turn off or back on the ability for your machine to sleep"
  homepage "https://github.com/WebReflection/krueger"
  url "https://github.com/WebReflection/krueger.git",
      tag:      "v0.1.1",
      revision: "018d5ac7c1c2a2682291399a11a224a94dbd89bc"
  license "MIT"

  def install
    bin.install "freddy.sh" => "krueger"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/krueger 2>&1", 1)
  end
end
