class MdPaper < Formula
  desc "Generates scientific papers written in Markdown"
  homepage "https://md-paper.now.sh"
  url "https://github.com/nico-bachner/md-paper/archive/v0.1.2.tar.gz"
  sha256 "89c65ea8dd1f03b8574933a3a8dd0653b0eb3df03e365bdcd338e362d1536242"
  license "MIT"
  
  depends_on "pandoc"
  
  def install
    bin.install "src/md-paper.sh" => "md-paper"
    include.install "src/tex.sh" => "tex.sh"
    include.install "src/pdf.ksh" => "pdf.ksh"
    include.install "src/template.tex" => "template.tex"
  end

  test do
    system "#{bin}/md-paper", "--version"
  end
end
