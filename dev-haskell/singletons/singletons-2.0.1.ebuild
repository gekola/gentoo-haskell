# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A framework for generating singleton types"
HOMEPAGE="http://www.github.com/goldfirere/singletons"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fails tests due to ghc changes

RDEPEND=">=dev-haskell/mtl-2.1.2:=[profile?]
	>=dev-haskell/syb-0.4:=[profile?]
	>=dev-haskell/th-desugar-1.5.4.1:=[profile?] <dev-haskell/th-desugar-1.6:=[profile?]
	>=dev-lang/ghc-7.10.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.4.0
	test? ( >=dev-haskell/tasty-0.6
		>=dev-haskell/tasty-golden-2.2 )
"

src_prepare() {
	# https://github.com/gentoo-haskell/gentoo-haskell/pull/360
	# https://ghc.haskell.org/trac/ghc/ticket/9160
	# https://ghc.haskell.org/trac/ghc/ticket/10689
	[[ $(ghc-version) == 7.8.* ]] && replace-hcflags -O[2-9] -O1
	[[ $(ghc-version) == 7.10.1 ]] && replace-hcflags -O[2-9] -O1
	[[ $(ghc-version) == 7.10.2 ]] && replace-hcflags -O[2-9] -O1
}
