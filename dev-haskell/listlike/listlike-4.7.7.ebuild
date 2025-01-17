# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1
CABAL_PN="ListLike"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generalized support for list-like structures"
HOMEPAGE="https://github.com/ddssff/listlike"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/dlist-0.7:=[profile?] <dev-haskell/dlist-1.1:=[profile?]
	>=dev-haskell/fmlist-0.8:=[profile?] <dev-haskell/fmlist-0.10:=[profile?]
	>=dev-haskell/utf8-string-0.3.1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vector-0.5:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3
		>=dev-haskell/random-1 <dev-haskell/random-2
	)
"
