# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -herbie

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Automatic Differentiation"
HOMEPAGE="https://github.com/ekmett/ad"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="ffi"

RDEPEND=">=dev-haskell/adjunctions-4.4:=[profile?] <dev-haskell/adjunctions-5:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/data-reify-0.6:=[profile?] <dev-haskell/data-reify-0.7:=[profile?]
	>=dev-haskell/erf-2.0:=[profile?] <dev-haskell/erf-2.1:=[profile?]
	>=dev-haskell/free-4.6.1:=[profile?] <dev-haskell/free-6:=[profile?]
	>=dev-haskell/nats-0.1.2:=[profile?] <dev-haskell/nats-2:=[profile?]
	>=dev-haskell/reflection-1.4:=[profile?] <dev-haskell/reflection-3:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag ffi ffi) \
		--flag=-herbie
}
