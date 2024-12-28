class GitAT2300 < Formula
  desc "Distributed version control system"
  homepage "https://git-scm.com"
  url "https://github.com/git/git/archive/v2.30.0.tar.gz"
  sha256 "8db4edd1a0a74ebf4b78aed3f9e25c8f2a7db3c00b1aaee94d1e9834fae24e61"

  depends_on "gettext"
  depends_on "pcre2"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/git", "--version"
  end
end

