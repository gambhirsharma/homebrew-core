class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.3.0"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.3.0/LINO_3.3.0_darwin_amd64.tar.gz"
  sha256 "04d1f7515d8e754f2614faef63cb289b9a3107140df52284ae79d0fb18e41351"

  def install

    chmod "+x", "lino"
    bin.install "lino"

    generate_completions_from_executable(bin/"lino", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lino --version")
    assert_match "Usage:", shell_output("#{bin}/lino --help")
  end
end
