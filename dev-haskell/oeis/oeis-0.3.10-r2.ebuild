# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4
#hackport: flags: +network-uri
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interface to the Online Encyclopedia of Integer Sequences (OEIS)"
HOMEPAGE="https://hackage.haskell.org/package/oeis"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/http-4000.2:=[profile?] <dev-haskell/http-4000.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	cabal_chdeps \
		'HTTP    >= 4000.2 && < 4000.4' 'HTTP    >= 4000.2'

	default
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=network-uri
}
