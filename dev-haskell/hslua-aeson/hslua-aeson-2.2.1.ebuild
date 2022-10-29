# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Allow aeson data types to be used with Lua"
HOMEPAGE="https://hslua.org/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.5:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/hslua-core-2.0:=[profile?] <dev-haskell/hslua-core-2.3:=[profile?]
	>=dev-haskell/hslua-marshalling-2.1:=[profile?] <dev-haskell/hslua-marshalling-2.3:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/quickcheck
		dev-haskell/quickcheck-instances
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-quickcheck-0.8 )
"
