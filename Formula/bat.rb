class Bat < Formula
  version '0.18.0'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "86583f06b490278fed45407f34afb17d674a8c8c6e8c70bcee5e9bcbf7f3f548"
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0e2877cd3256d82400458e9a7cfd5ac9b4ea6f109fa7f8c03a014a8447798946"
  end


  def install
    bin.install "bat"
    man1.install "bat.1"
  end
end