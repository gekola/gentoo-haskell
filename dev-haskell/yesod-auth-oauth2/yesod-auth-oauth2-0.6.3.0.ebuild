# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="OAuth 2.0 authentication plugins"
HOMEPAGE="https://github.com/freckle/yesod-auth-oauth2"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/cryptonite-0.25:=[profile?] <dev-haskell/cryptonite-0.29:=[profile?]
	>=dev-haskell/errors-2.3.0:=[profile?] <dev-haskell/errors-2.4:=[profile?]
	>=dev-haskell/hoauth2-1.11.0:=[profile?] <dev-haskell/hoauth2-1.17:=[profile?]
	>=dev-haskell/http-client-0.4.0:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-conduit-2.0:=[profile?] <dev-haskell/http-conduit-3.0:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/memory-0.15.0:=[profile?] <dev-haskell/memory-0.16:=[profile?]
	>=dev-haskell/microlens-0.4.11.2:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/safe-exceptions-0.1.7.1:=[profile?] <dev-haskell/safe-exceptions-0.2:=[profile?]
	>=dev-haskell/text-0.7:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/unliftio-0.2.14:=[profile?] <dev-haskell/unliftio-0.3:=[profile?]
	>=dev-haskell/uri-bytestring-0.3.3.0:=[profile?] <dev-haskell/uri-bytestring-0.4:=[profile?]
	>=dev-haskell/yesod-auth-1.6.0:=[profile?] <dev-haskell/yesod-auth-1.7:=[profile?]
	>=dev-haskell/yesod-core-1.6.0:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	examples? ( dev-haskell/aeson-pretty:=[profile?]
			dev-haskell/load-env:=[profile?]
			dev-haskell/warp:=[profile?]
			dev-haskell/yesod:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.7.8 <dev-haskell/hspec-2.8 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example)
}