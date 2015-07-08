require 'formula'
class Erln8 < Formula
  homepage 'http://erln8.github.io/erln8/'
  url 'https://github.com/erln8/erln8/archive/2.0.3-BETA.tar.gz'
  sha1 'c7efb0d49fa7ca1d243b56f0693b5b176c436518'

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
