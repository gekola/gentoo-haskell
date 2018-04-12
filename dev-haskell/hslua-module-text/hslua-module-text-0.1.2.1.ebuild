# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lua module for text"
HOMEPAGE="https://github.com/hslua/hslua-module-test"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hslua-0.9:=[profile?] <dev-haskell/hslua-0.10:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit )
"
src_prepare() {
	default

	cabal_chdeps \
		'base  >= 4.7 && < 4.11' 'base  >= 4.7'
}
