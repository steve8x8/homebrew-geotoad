class Geotoad < Formula
  desc "Query tool to query the geocaching.com website"
  homepage "https://github.com/steve8x8/geotoad"
  url "https://github.com/steve8x8/geotoad/archive/3.29.0.tar.gz"
  sha256 "6f7be5d6a021f15d70c7ed75ad031d17ee49ad57bc39ee1ed123d584a87d3c26"
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
