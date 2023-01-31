class Pmtiles < Formula
  desc "Single-file executable tool for creating, reading and uploading PMTiles archives"
  homepage "https://protomaps.com/docs/pmtiles"
  url "https://github.com/protomaps/go-pmtiles/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "b97095cccba9d13d79f52e216ed25d598f2fc203e050908ca19e06ff8060f2d7"
  license "BSD-3-Clause"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/pmtiles"
  end

  test do
    shell_output("#{bin}/pmtiles --help")
  end
end
