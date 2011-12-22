# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Painless 2D vector graphics, animations and simulations."
HOMEPAGE="http://gloss.ouroborus.net"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bmp-1.1
		=dev-haskell/glut-2.2*
		=dev-haskell/opengl-2.4*
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@bmp        == 1.1.\*@bmp        >= 1.1@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
