# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the GStreamer open source multimedia framework"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.12.5.0:0=[profile?] <dev-haskell/glib-0.14:0=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	media-libs/gst-plugins-base:0.10=
	media-libs/gstreamer:0.10=
"
DEPEND="${RDEPEND}
	>=dev-haskell/gtk2hs-buildtools-0.12.5.1-r1:0=
	virtual/pkgconfig
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-refresh-cabal.patch
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch

	cabal_chdeps \
		'glib  >= 0.12.5.0 && < 0.13' 'glib  >= 0.12.5.0 && < 0.14'
}

src_configure() {
	haskell-cabal_src_configure \
		--constraint="Cabal == $(cabal-version)"
}
