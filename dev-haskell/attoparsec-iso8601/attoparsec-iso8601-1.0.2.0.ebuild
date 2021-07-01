# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -developer -fast

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parsing of ISO 8601 dates, originally from aeson"
HOMEPAGE="https://github.com/haskell/aeson"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="developer fast"

RDEPEND=">=dev-haskell/attoparsec-0.13.0.1:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10.0:=[profile?] <dev-haskell/base-compat-batteries-0.12:=[profile?]
	>=dev-haskell/text-1.1.1.0:=[profile?] <dev-haskell/text-1.3.0.0:=[profile?]
	>=dev-haskell/time-compat-1.9.4:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag developer developer) \
		--flag=-developer -fast \
		$(cabal_flag fast fast)
}