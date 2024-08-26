class Maputnik < Formula
  desc "Open source visual editor for the 'Mapbox Style Specification"
  homepage "https://maputnik.github.io/editor/"
  url "https://github.com/kevinschaul/maputnik-desktop/archive/refs/tags/v1.1.0-alpha.1.tar.gz"
  sha256 "404b5c3ef19f1173240bcbeb35aab64d21540c5948bbb4061b28f125f58096ea"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["GOBIN"] = bin
    system "make"
    system "go", "build", "-o", "#{bin}/maputnik"
  end

  test do
    shell_output("#{bin}/maputnik --help")
  end
end
