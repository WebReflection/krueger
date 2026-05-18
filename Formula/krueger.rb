class Krueger < Formula
  desc "Turn off or back on the ability for your machine to sleep"
  homepage "https://github.com/WebReflection/krueger"
  url "https://github.com/WebReflection/krueger.git",
      tag:      "v0.1.0",
      revision: "faab4d09553d9d7b353d3093b7210036d0f0c784"
  license "MIT"

  def install
    bin.install "freddy.sh" => "krueger"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/krueger 2>&1", 1)
  end
end
