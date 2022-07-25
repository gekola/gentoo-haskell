# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999
#hackport: flags: -pedantic
CABAL_PN="X11"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A binding to the X11 graphics library"
HOMEPAGE="https://github.com/xmonad/X11"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="+xinerama"

# add +xinerama to IUSE and RDEPEND on libXScrnSaver and libXinerama below
RDEPEND=">=dev-haskell/data-default-class-0.1:=[profile?] <dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXrandr
	x11-libs/libXScrnSaver
	xinerama? ( x11-libs/libXinerama )

"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic \
		--configure-option=$(use_with xinerama)
}