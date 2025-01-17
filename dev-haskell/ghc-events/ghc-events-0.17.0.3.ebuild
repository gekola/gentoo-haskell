# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library and tool for parsing .eventlog files from GHC"
HOMEPAGE="https://hackage.haskell.org/package/ghc-events"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/text-0.11.2.3:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
