require 'formula'

class ArmNoneEabiGcc < Formula

  homepage 'https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads'
  version '5-2016-q3-update'

  url 'https://developer.arm.com/-/media/Files/downloads/gnu-rm/5_4-2016q3/gcc-arm-none-eabi-5_4-2016q3-20160926-mac.tar.bz2'
  sha256 '5656cdec40f99d5c054a85bbc694276e1c4a1488cdacbbc448bc6acd3bbe070d'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
