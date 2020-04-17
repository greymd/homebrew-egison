class EgisonTutorial < Formula
  VERSION = "4.0.0"
  version VERSION
  desc "A tutorial program for the Egison programming language"
  homepage "https://www.egison.org/"
  url "https://github.com/egison/homebrew-egison/releases/download/#{VERSION}/egison-tutorial_darwin_x86_64_#{VERSION}.zip"
  sha256 "735039c7db7c36f22159987c1d0a0e4496842740e14b4f3b89bbc691f3a211fb"

  depends_on "egison"

  def install
    bin.install "egison-tutorial"
    bin.install "egison-tutorial-impl"
    lib.install "lib/egison-tutorial"
  end

  test do
    system "#{bin}/egison-tutorial", "--version"
  end
end
