class EgisonTutorial < Formula
  VERSION = "3.9.3"
  version VERSION
  desc "A tutorial program for the Egison programming language"
  homepage "https://www.egison.org/"
  url "https://github.com/greymd/homebrew-egison/releases/download/#{VERSION}/egison-tutorial_darwin_x86_64_#{VERSION}.zip"
  sha256 "4891d7455784be63f9a158412ebfb693c87426bf5152e7d1bb5e8ae94d10014b"

  depends_on "egison"

  def install
    bin.install "bin/egison-tutorial"
    bin.install "bin/egison-tutorial-impl"
  end

  test do
    system "#{bin}/egison-tutorial", "--version"
  end
end
