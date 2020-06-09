class EgisonTutorial < Formula
  VERSION = "4.0.1"
  version VERSION
  desc "A tutorial program for the Egison programming language"
  homepage "https://www.egison.org/"
  url "https://github.com/egison/homebrew-egison/releases/download/#{VERSION}/egison-tutorial_darwin_x86_64_#{VERSION}.zip"
  sha256 "0fdc6a88809b91475859b6fdaf8684f65d0edc39b26d293b21bfbcbf81126723"

  def install
    bin.install "bin/egison-tutorial"
    bin.install "bin/egison-tutorial-impl"
    lib.install "lib/egison-tutorial/"
  end

  test do
    system "#{bin}/egison-tutorial", "--version"
  end
end
