class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.1.28"
  
  depends_on "protobuf"
  
  on_macos do
    on_arm do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-aarch64.tar.gz"
      sha256 "d42504eea93c69fb9009dabb2594081e118ab7ae0c70688263322d72b073b7b0"
    end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-amd64.tar.gz"
      sha256 "3d81f0452b9346dbdac9cf7af6a17c0aeba8eceb65dc1ea75814ac6e247783aa"
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

