class PassExtensionMeta < Formula
  desc "password-store extension to retrieve meta-data properties from password files"
  homepage "https://github.com/rjekker/pass-extension-meta"
  license "GPL-3.0"
  head "https://github.com/gitetsu/pass-extension-meta.git", :branch => "patch-1"

  depends_on "pass"

  def install
    system "make", "PREFIX=#{prefix}", "BASHCOMPDIR=#{bash_completion}", "install"
  end

  test do
  end
end
