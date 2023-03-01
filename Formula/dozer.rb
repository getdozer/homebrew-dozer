class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.10"
  
  depends_on "openssl"
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/homebrew-dozer/releases/latest/download/dozer-mac.tar.gz"
      sha256 "13f3f957bfb1efdd565d7b1aef96147cbbf3dfce15ab37b9ce765e9562d0ad6b"
    end
    on_intel do
      url "https://github.com/getdozer/homebrew-dozer/releases/latest/download/dozer-mac-intel.tar.gz"
      sha256 "a5e1995805bd275c45a78c13e2f26fc805343398e1006e7861c5099a4bcc2c09"
    end
  end
  
  on_linux do
  end
  
 
  def install
    bin.install "dozer"
  end
  
  test do
    dozer -h
  end
end

