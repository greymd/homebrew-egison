class EgisonTutorial < Formula
  VERSION = "4.0.0"
  version VERSION
  desc "A tutorial program for the Egison programming language"
  homepage "https://www.egison.org/"
  url "https://github.com/egison/homebrew-egison/releases/download/#{VERSION}/egison-tutorial_darwin_x86_64_#{VERSION}.zip"
  sha256 "9c896c1a548aa9bdf6f91be733447339a48de573b7681becf56cdb84d4806dd1"

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
