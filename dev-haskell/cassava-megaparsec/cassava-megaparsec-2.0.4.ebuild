# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999
#hackport: flags: -dev

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Megaparsec parser of CSV files that plays nicely with Cassava"
HOMEPAGE="https://github.com/stackbuilders/cassava-megaparsec"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/cassava-0.4.2:=[profile?] <dev-haskell/cassava-0.6:=[profile?]
	>=dev-haskell/megaparsec-7.0:=[profile?] <dev-haskell/megaparsec-10.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-megaparsec-2.0 <dev-haskell/hspec-megaparsec-3.0
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}