class MdPaper < Formula
  desc "Generates scientific papers written in Markdown"
  homepage "https://md-paper.nicob.dev"
  url "https://github.com/nico-bachner/md-paper/archive/v0.1.3.tar.gz"
  sha256 "fd5f9db3196efc40fe0cbe2451c934fb07d5e1d42c4ff6d40babfddc17c6815f"
  license "MIT"
  
  depends_on "pandoc"
  
  def install
    bin.install "src/md-paper.sh" => "md-paper"
    include.install "src/tex.sh" => "tex.sh"
    include.install "src/pdf.sh" => "pdf.sh"
    include.install "src/template.tex" => "template.tex"
  end

  test do
    system "#{bin}/md-paper", "--version"
  end
end
