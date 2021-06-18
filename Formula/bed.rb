class Bed < Formula
  version '0.2.1'
  desc "Binary editor written in Go "
  homepage "https://github.com/itchyny/bed"

  if OS.mac?
    url "https://github.com/itchyny/bed/releases/download/v#{version}/bed_v#{version}_darwin_amd64.zip"
    sha256 "eb757353cd95cc8d57c71a646ddb9381d9720dc61c315c9d78a91b3cd994617a"
  elsif OS.linux?
    url "https://github.com/itchyny/bed/releases/download/v#{version}/bed_v#{version}_linux_amd64.tar.gz"
    sha256 "b18e55cb6c09c9bb88ea41ec682854709bf8fb082c2318e0b57093bb16fda7ba"
  end


  def install
    bin.install "bed"
  end
end