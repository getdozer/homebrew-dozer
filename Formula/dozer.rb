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
    shell_output("dozer --help")
    assert_match "____   ___ __________ ____\n|  _ \\ / _ \\__  / ____|  _ \\\n| | | | | | |/ /|  _| | |_) |\n| |_| | |_| / /_| |___|  _ <\n|____/ \\___/____|_____|_| \\_\\\n \n Open-source platform to build, publish and manage blazing-fast real-time data APIs in minutes. \n\nIf no sub commands are passed, dozer will bring up both app and api services.\n\n\nUsage: dozer [OPTIONS] [COMMAND]\n\nCommands:\n  configure  Interactive REPL for configuring sources and schemas\n  migrate    Initialize and lock schema definitions. Once intiialized, schemas cannot be changed.\n  clean      Clean home directory\n  api        Run Api Server\n  app        Run App Server\n  connector  Show Sources\n  init       Initalize an app using a template.\n  help       Print this message or the help of the given subcommand(s)\n\nOptions:\n  -c, --config-path <CONFIG_PATH>  [default: ./dozer-config.yaml]\n  -h, --help                       Print help\n  -V, --version                    Print version\n", shell_output("#{bin}/dozer --help")
  end
end

