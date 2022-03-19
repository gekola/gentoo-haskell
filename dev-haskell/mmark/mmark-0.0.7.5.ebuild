# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Tests fail. See <https://github.com/mmark-md/mmark/issues/85>

DESCRIPTION="Strict markdown processor for writers"
HOMEPAGE="https://github.com/mmark-md/mmark"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/dlist-0.8:=[profile?] <dev-haskell/dlist-2.0:=[profile?]
	>=dev-haskell/email-validate-2.2:=[profile?] <dev-haskell/email-validate-2.4:=[profile?]
	>=dev-haskell/foldl-1.2:=[profile?] <dev-haskell/foldl-1.5:=[profile?]
	>=dev-haskell/hashable-1:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/html-entity-map-0.1:=[profile?] <dev-haskell/html-entity-map-0.2:=[profile?]
	>=dev-haskell/lucid-2.9.13:=[profile?] <dev-haskell/lucid-3.0:=[profile?]
	>=dev-haskell/megaparsec-8.0:=[profile?] <dev-haskell/megaparsec-10.0:=[profile?]
	>=dev-haskell/microlens-0.4:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/microlens-th-0.4:=[profile?] <dev-haskell/microlens-th-0.5:=[profile?]
	>=dev-haskell/modern-uri-0.3.4.3:=[profile?] <dev-haskell/modern-uri-0.4:=[profile?]
	>=dev-haskell/parser-combinators-0.4:=[profile?] <dev-haskell/parser-combinators-2.0:=[profile?]
	>=dev-haskell/text-metrics-0.3:=[profile?] <dev-haskell/text-metrics-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/yaml-0.11.5:=[profile?] <dev-haskell/yaml-0.12:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0"
#	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
#		>=dev-haskell/hspec-megaparsec-2.0 <dev-haskell/hspec-megaparsec-3.0
#		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3.0 )

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}