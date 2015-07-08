require 'formula'
class Erln8 < Formula
  homepage 'http://erln8.github.io/erln8/'
  url 'https://github.com/erln8/erln8/archive/2.0-beta1.tar.gz'
  sha1 '349db7d801568e305b9c5c5f6e8b8082484fc5f9'

  depends_on 'dmd'
  depends_on 'dub'

  def install
    system "make"
    system "make install"
    #bash_completion.install 'bash_completion/erln8'
  end

  test do
    system "~/.erln8.d/bin/erln8 --help"
  end
end
