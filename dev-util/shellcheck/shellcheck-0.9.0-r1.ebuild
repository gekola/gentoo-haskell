# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=1
CABAL_PN="ShellCheck"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Shell script analysis tool"
HOMEPAGE="https://www.shellcheck.net/"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.4.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	>=dev-haskell/fgl-5.7.0:=[profile?] <dev-haskell/fgl-5.8.1.0:=[profile?]
	|| ( dev-lang/ghc dev-haskell/process[profile?] )
	>=dev-haskell/quickcheck-2.14.2:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	>=dev-haskell/regex-tdfa-1.2.0:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
