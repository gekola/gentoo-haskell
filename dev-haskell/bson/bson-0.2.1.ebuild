# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="BSON documents are JSON-like objects with a standard binary
encoding."
HOMEPAGE="http://github.com/selectel/bson-haskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary[profile?]
		dev-haskell/cryptohash[profile?]
		dev-haskell/data-binary-ieee754[profile?]
		>=dev-haskell/mtl-2[profile?]
		dev-haskell/network[profile?]
		=dev-haskell/text-0.11*[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/quickcheck-2.4:2[profile?]
			<dev-haskell/quickcheck-2.7:2[profile?]
			>=dev-haskell/test-framework-0.4
			<dev-haskell/test-framework-0.9
			>=dev-haskell/test-framework-quickcheck2-0.2
			<dev-haskell/test-framework-quickcheck2-0.4
		)
		>=dev-haskell/cabal-1.8"

PATCHES=("${FILESDIR}/${PN}-0.2.1-fix-tests.patch")

src_prepare() {
	base_src_prepare

	cabal_chdeps \
		'test-framework             >= 0.4 && < 0.7' 'test-framework             >= 0.4 && < 0.9' \
		'test-framework-quickcheck2 >= 0.2 && < 0.3' 'test-framework-quickcheck2 >= 0.2 && < 0.4'
}
