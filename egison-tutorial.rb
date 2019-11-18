class EgisonTutorial < Formula
  VERSION = "3.9.3"
  version VERSION
  desc "A tutorial program for the Egison programming language"
  homepage "https://www.egison.org/"
  url "https://github.com/egison/homebrew-egison/releases/download/#{VERSION}/egison-tutorial_darwin_x86_64_#{VERSION}.zip"
  sha256 "2f5c156dd2f4079cfe502aae2963a05b67978f02df4f01511c939f61b36fea30"

  depends_on "egison"

  def install
    bin.install "bin/egison-tutorial"
    bin.install "bin/egison-tutorial-impl"
  end

  test do
    system "#{bin}/egison-tutorial", "--version"
  end
end
