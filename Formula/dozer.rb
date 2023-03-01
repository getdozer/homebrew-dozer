class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  url "https://github.com/getdozer/homebrew-dozer/releases/latest/download/dozer-mac.tar.gz"
  sha256 "13f3f957bfb1efdd565d7b1aef96147cbbf3dfce15ab37b9ce765e9562d0ad6b"
  version "0.1.10"
  
  def install
    bin.install "dozer"
  end
end

