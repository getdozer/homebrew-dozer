class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.16"
  
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-aarch64.tar.gz"
      sha256 "91fe38b8c50afc26af040008a59a67d6f2be024eb1c8120fffc1592ec09cc6c6"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-amd64.tar.gz"
      sha256 "ccbc2414d120e8786c6bc01751f90bafc13755c220e123fe18327a5332d97964"
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

