# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="IPv4 Network Stack"
HOMEPAGE="http://hackage.haskell.org/package/hans"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/cereal-0.3.0*:=[profile?]
		=dev-haskell/fingertree-0.0.1*:=[profile?]
		=dev-haskell/monadlib-3.6*:=[profile?]
		=dev-haskell/random-1.0.0*:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.6.patch

	cabal_chdeps \
		'cereal        == 0.3.0.*' 'cereal        == 0.3.*' \
		'bytestring == 0.9.1.*' 'bytestring    >= 0.9 && < 0.11' \
		'bytestring    == 0.9.1.*' 'bytestring    >= 0.9 && < 0.11' \
		'containers    >= 0.4.0.0 && < 0.5.0.0' 'containers    >= 0.4.0.0 && < 0.7.0.0' \
		'containers >= 0.4.0.0 && < 0.5.0.0' 'containers    >= 0.4.0.0 && < 0.7.0.0' \
		'monadLib      == 3.6.*' 'monadLib      >= 3.6 && < 3.8' \
		'monadLib   == 3.6.*' 'monadLib      >= 3.6 && < 3.8' \
		'time          >= 1.2.0.0 && < 1.3.0.0' 'time          >= 1.2.0.0 && < 1.5.0.0' \
		'time       >= 1.2.0.0 && < 1.3.0.0' 'time          >= 1.2.0.0 && < 1.5.0.0' \
		'random     == 1.0.0.*' 'random     == 1.0.*'
}
