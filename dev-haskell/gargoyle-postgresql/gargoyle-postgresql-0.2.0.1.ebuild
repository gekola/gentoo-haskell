# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -enable-psql-test

# These tests most likely spin up an instance of postgresql, and are not
# appropriate for gentoo's sandbox
CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal
RESTRICT="test"

DESCRIPTION="Manage PostgreSQL servers with gargoyle"
HOMEPAGE="https://hackage.haskell.org/package/gargoyle-postgresql"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executables"

PATCHES=( "${FILESDIR}/${P}-add-executables-flag.patch" )

RDEPEND=">=dev-haskell/gargoyle-0.1.1.0:=[profile?] <dev-haskell/gargoyle-0.2:=[profile?]
	>=dev-haskell/posix-escape-0.1:=[profile?] <dev-haskell/posix-escape-0.2:=[profile?]
	>=dev-haskell/stringsearch-0.3:=[profile?] <dev-haskell/stringsearch-0.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"

src_prepare() {
	default

	cabal_chdeps \
		'base          >=4.12  && <4.15' 'base >=4.12'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executables) \
		--flag=-enable-psql-test
}
