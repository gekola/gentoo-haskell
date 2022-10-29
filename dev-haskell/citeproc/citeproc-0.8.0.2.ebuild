# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generates citations and bibliography from CSL styles"
HOMEPAGE="https://hackage.haskell.org/package/citeproc"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable icu"

# Many tests for this package are known to fail and this is acceptable for
# upstream:
# <https://github.com/jgm/citeproc#known-bugs-and-limitations>
# The author seems to know which tests are expected to fail, but I
# can't find documentation for exactly which ones.
RESTRICT="test"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	>=dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/data-default-0.5.2:=[profile?]
	dev-haskell/file-embed:=[profile?]
	>=dev-haskell/pandoc-types-1.22:=[profile?] <dev-haskell/pandoc-types-1.23:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/scientific:=[profile?]
	>=dev-haskell/unicode-collation-0.1.3:=[profile?] <dev-haskell/unicode-collation-0.2:=[profile?]
	dev-haskell/uniplate:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/xml-conduit:=[profile?]
	>=dev-lang/ghc-8.6.5:=
	executable? ( dev-haskell/aeson-pretty:=[profile?] )
	icu? ( >=dev-haskell/text-icu-0.7.1.0:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/diff-0.4
		dev-haskell/timeit )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		$(cabal_flag icu icu)
}
