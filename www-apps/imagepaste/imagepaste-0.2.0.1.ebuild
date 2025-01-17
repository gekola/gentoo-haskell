# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES=""
inherit eutils haskell-cabal

DESCRIPTION="Command-line image paste utility"
HOMEPAGE="https://bitbucket.org/balta2ar/imagepaste"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/http:=
	dev-haskell/json:=
	dev-haskell/mtl:=
	dev-haskell/network:=
	dev-haskell/regex-posix:=
	dev-haskell/tagsoup:=
	dev-haskell/transformers:=
	dev-haskell/vcs-revision:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-7.10.patch
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'network' 'network, network-uri'
}
