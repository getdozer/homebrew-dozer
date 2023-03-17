class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.12"
  
  depends_on "openssl"
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/latest/download/dozer-macos-arm64-v#{version}.tar.gz"
      sha256 "a9fc8844a47d867961acc4d0c7f6c91a95e8a16dc58677d8c1e64b850c7b9ca3"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/latest/download/dozer-macos-amd64-v#{version}.tar.gz"
      sha256 "eda8a2106fc7734ae60bfdd04ff2e745b5f2ff01b2437d668028ea23027f4305"
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

