class GitAT2300 < Formula
  desc "Distributed version control system"
  homepage "https://git-scm.com"
  url "https://github.com/git/git/archive/v2.30.0.tar.gz"
  sha256 "ad2c90a5b318b4087bb3a8e04a96fd362d06b9ac5ed157d1190fce35a7b5b504"

  depends_on "gettext"
  depends_on "pcre2"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/git", "--version"
  end
end

