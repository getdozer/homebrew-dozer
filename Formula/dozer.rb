class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.11"
  
  depends_on "openssl"
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/latest/download/dozer-macos-arm64-v#{version}.tar.gz"
      sha256 "d25c7335391b09ffd9a419765831e8633c0a8c86331a5ed7856eb22da530f8b0"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/latest/download/dozer-macos-amd64-v#{version}.tar.gz"
      sha256 "13f3f957bfb1efdd565d7b1aef96147cbbf3dfce15ab37b9ce765e9562d0ad6b"
    end
  end
  
  on_linux do
  end
  
 
  def install
    bin.install "dozer"
  end
  
  test do
    shell_output("dozer --help")
    assert_match "dozer 0.1.11", shell_output("#{bin}/dozer -V")
  end
end

