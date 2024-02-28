class Dozer < Formula
  desc "Open-source low code platform that lets you build data apps in minutes"
  homepage "https://github.com/getdozer/dozer"
  version "0.4.0"
  
  depends_on "protobuf"
  
  on_macos do
    # on_arm do
    #   url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-aarch64.tar.gz"
    #   sha256 "26349b7ec6915a91c9b4a5287d83a934c2318acf63a4d877f8a74e54ca06c413"
    # end
    on_intel do
      url "https://github.com/getdozer/dozer/releases/download/v#{version}/dozer-macos-amd64.tar.gz"
      sha256 "44aa8d0b3e5f95c6aed2ba540c3dc12ef3af45e4c05319bad65ab2fa381ce882"
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

