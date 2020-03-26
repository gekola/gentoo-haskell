# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Disambiguate obvious uses of effects"
HOMEPAGE="https://github.com/isovector/polysemy#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="corelint"

RDEPEND=">=dev-haskell/ghc-tcplugins-extra-0.3:=[profile?] <dev-haskell/ghc-tcplugins-extra-0.4:=[profile?]
	>=dev-haskell/polysemy-1.3:=[profile?]
	>=dev-haskell/syb-0.7:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	>=dev-lang/ghc-8.4.4:=[profile?] <dev-lang/ghc-9:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	>=dev-haskell/cabal-doctest-1.0.6 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.16.0.1 <dev-haskell/doctest-0.17
		>=dev-haskell/hspec-2.6.0 <dev-haskell/hspec-3
		>=dev-haskell/inspection-testing-0.4.2 <dev-haskell/inspection-testing-0.5
		>=dev-haskell/polysemy-1.3.0.0
		>=dev-haskell/should-not-typecheck-2.1.0 <dev-haskell/should-not-typecheck-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag corelint corelint)
}
