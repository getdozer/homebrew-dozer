class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.13"
  
  depends_on "openssl"
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/latest/download/dozer-macos-arm64-v#{version}.tar.gz"
      sha256 "1257f7bf783e05bb7d924c58bdcb951d6906f27f946f3a8df955a7e56c2c5ac7"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/latest/download/dozer-macos-amd64-v#{version}.tar.gz"
      sha256 "e4d266ac7d966b88b5e0fa357a93398b569514dab1ff46dca9e8b77bca27ee92"
    end
  end
  
  on_linux do
  end
  
 
  def install
    bin.install "dozer"
  end
  
  test do
    shell_output("dozer --help")
    assert_match "dozer #{version}", shell_output("#{bin}/dozer -V")
  end
end

