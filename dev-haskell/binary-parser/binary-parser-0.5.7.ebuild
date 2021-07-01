# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A highly-efficient but limited parser API specialised for bytestrings"
HOMEPAGE="https://github.com/nikita-volkov/binary-parser"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.22 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11 )
"