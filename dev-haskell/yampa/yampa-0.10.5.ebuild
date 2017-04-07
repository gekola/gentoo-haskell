# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="Yampa"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Library for programming hybrid systems"
HOMEPAGE="http://www.haskell.org/haskellwiki/Yampa"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test-doc-coverage test-hlint +test-regression"

RDEPEND="dev-haskell/random:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test-hlint? ( test-doc-coverage? ( test? ( >=dev-haskell/hlint-1.7
							dev-haskell/regex-posix ) )
			!test-doc-coverage? ( test? ( >=dev-haskell/hlint-1.7 ) ) )
	!test-hlint? ( test? ( test-doc-coverage? ( dev-haskell/regex-posix ) ) )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test-doc-coverage test-doc-coverage) \
		$(cabal_flag test-hlint test-hlint) \
		$(cabal_flag test-regression test-regression)
}
