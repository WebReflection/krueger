class Krueger < Formula
  desc "Turn off or back on the ability for your machine to sleep"
  homepage "https://github.com/WebReflection/krueger"
  url "https://github.com/WebReflection/krueger.git",
      tag:      "v0.1.0",
      revision: "e29aa94a213023da3cd3ab94749a9de1c2bda323"
  license "MIT"

  def install
    bin.install "freddy.sh" => "krueger"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/krueger 2>&1", 1)
  end
end
