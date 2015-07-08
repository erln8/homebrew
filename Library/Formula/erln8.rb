require 'formula'
class Erln8 < Formula
  homepage 'http://erln8.github.io/erln8/'
  url 'https://github.com/erln8/erln8/archive/2.0-beta2.tar.gz'
  sha1 '910378d39a5a26bd544f03ff78eb3df96919d9ac'

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
