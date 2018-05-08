class Geotoad < Formula
  desc "Query tool to query the geocaching.com website"
  homepage "https://github.com/steve8x8/geotoad"
  url "https://github.com/steve8x8/geotoad/archive/3.28.1.tar.gz"
  sha256 "49ef9db7816b514a5a978b584564b91b896cfa21c3acf8202346c53a22d0190c"
  head "https://github.com/steve8x8/geotoad.git"

  def install
    libexec.install %w[data interface lib templates]
    libexec.install "geotoad.rb" => "geotoad"

    bin.write_exec_script libexec/"geotoad"

    doc.install "FAQ.txt", "Templates.txt"
    man1.install "geotoad.1"
  end

  test do
    system "#{bin}/geotoad", "-V"
  end
end
