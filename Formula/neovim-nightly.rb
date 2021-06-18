class NeovimNightly < Formula
  desc "Vim-fork focused on extensibility and usability."
  homepage "https://github.com/neovim/neovim"
  version "0.5.0"
  if OS.linux?
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz"
    sha256 "c8a93779eac31b63cca13bd75b95925e840d1c376418068b19b31c2441951f66"
  end


  def install
    bin.install "bin/nvim"
    share.install Dir["lib/*"]
    share.install Dir["share/*"]
  end
end
