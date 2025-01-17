# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Read and write uncompressed BMP image files"
HOMEPAGE="https://github.com/benl23x5/bmp"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
