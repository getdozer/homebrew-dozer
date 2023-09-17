class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.38"
  
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-aarch64.tar.gz"
      sha256 "51c7d6c51589618047af1b14a2a41e3a1984d757da05d7218f5ca48e17f9b262"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-amd64.tar.gz"
      sha256 "cebf378d365faa3d9f00532ce111c6532db860535f1c7cdc8e9f6f2bf4baa224"
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

