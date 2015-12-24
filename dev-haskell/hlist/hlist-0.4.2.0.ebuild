# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HList"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Heterogeneous lists"
HOMEPAGE="http://hackage.haskell.org/package/HList"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # show

RDEPEND="dev-haskell/base-orphans:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/profunctors:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/cmdargs
		>=dev-haskell/doctest-0.8
		>=dev-haskell/hspec-1.7
		dev-haskell/lens
		dev-haskell/quickcheck
		dev-haskell/syb )
"

S="${WORKDIR}/${MY_P}"
