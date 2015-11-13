# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -useglxgetprocaddress,-usenativewindowslibraries

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Complete OpenGL raw bindings"
HOMEPAGE="http://hackage.haskell.org/package/gl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/fixed-0.2.1:=[profile?] <dev-haskell/fixed-0.3:=[profile?]
	>=dev-haskell/half-0.2:=[profile?] <dev-haskell/half-0.3:=[profile?]
	>=dev-haskell/hxt-9.3:=[profile?] <dev-haskell/hxt-9.4:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	virtual/opengl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-useglxgetprocaddress \
		--flag=-usenativewindowslibraries
}
