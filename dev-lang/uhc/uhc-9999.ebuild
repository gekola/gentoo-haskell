# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.7.9999

inherit eutils git-r3

DESCRIPTION="an Utrecht University haskell compiler"
HOMEPAGE="http://www.cs.uu.nl/wiki/UHC/"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""
IUSE=""

EGIT_REPO_URI="git://github.com/UU-ComputerScience/uhc.git"

RDEPEND="dev-haskell/binary:=
	dev-haskell/fgl:=
	dev-haskell/hashable:=
	dev-haskell/network:=
	dev-haskell/shuffle:=
	dev-haskell/syb:=
	dev-haskell/uhc-util:=
	dev-haskell/uuagc:=
	dev-haskell/uulib:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

RESTRICT=test # needs /usr/bin/uhc
MAKEOPTS+=" -j1" # uhc itself fails to build base in parallel

S=${S}/EHC

src_prepare() {
	export HOME=${T} # needs for inplace install
	default
}
