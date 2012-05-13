require 'formula'

class Dbacl < Formula
  homepage 'http://www.lbreyer.com/dbacl.html'
  url 'http://www.lbreyer.com/gpl/dbacl-1.14.tar.gz'
  md5 '85bfd88bc20f326dc0f31e794948e21c'

  def install

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "Dbacl installed"
  end
end
