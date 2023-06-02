class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.24"
  
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-aarch64.tar.gz"
      sha256 "0f2bd1540575593c65bb8c3fa0f350a036d9301505f0696f60a55b70da31bad4"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-amd64.tar.gz"
      sha256 "341795788d0c0a33e40cb09c328520c6a10e64f0d146d26b8e4f1dd7c03c91f8"
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

