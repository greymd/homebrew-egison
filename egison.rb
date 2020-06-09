class Egison < Formula
  VERSION = "4.0.3"
  version VERSION
  desc "A purely functional programming language with non-linear pattern-matching against non-free data types"
  homepage "https://www.egison.org/"
  url "https://github.com/egison/homebrew-egison/releases/download/#{VERSION}/egison_darwin_x86_64_#{VERSION}.zip"
  sha256 "3db5036214dab84658cf5aef0247bfa1abcf81376498eea5082f3e25df8e9f1a"

  def install
    bin.install "bin/egison"
    lib.install "lib/egison"
  end

  test do
    system "#{bin}/egison", "--version"
  end
end
