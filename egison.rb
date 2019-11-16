class Egison < Formula
  VERSION = "3.9.3"
  version VERSION
  desc "A purely functional programming language with non-linear pattern-matching against non-free data types"
  homepage "https://www.egison.org/"
  url "https://github.com/egison/homebrew-egison/releases/download/#{VERSION}/egison_darwin_x86_64_#{VERSION}.zip"
  sha256 "133201d779e2aa47b3d095fc90670314a26a4a2f888975874104ee63de89ae6e"

  def install
    bin.install "bin/egison"
    lib.install "lib/egison"
  end

  test do
    system "#{bin}/egison", "--version"
  end
end
