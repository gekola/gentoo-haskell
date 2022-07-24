# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="JSON Web Token (JWT) decoding and encoding"
HOMEPAGE="https://github.com/puffnfresh/haskell-jwt"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # doctest fails, testsuite passes

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/cryptonite-0.6:=[profile?]
	>=dev-haskell/cryptostore-0.2:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/memory-0.8:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/scientific-0.2:=[profile?]
	>=dev-haskell/semigroups-0.15.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?]
	dev-haskell/x509:=[profile?]
	dev-haskell/x509-store:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.20
		dev-haskell/hunit
		dev-haskell/lens
		dev-haskell/lens-aeson
		>=dev-haskell/quickcheck-2.4.0.1
		>=dev-haskell/tasty-0.7
		>=dev-haskell/tasty-hunit-0.4
		>=dev-haskell/tasty-quickcheck-0.3
		>=dev-haskell/tasty-th-0.1 )
"