# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: +library,+executable,-hpc,-warn-as-error,+pkgconfig,-rts,-static,-optimize,hashed-storage-diff:diff,+http

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="a distributed, interactive, smart revision control system"
HOMEPAGE="https://darcs.net/"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+terminfo +threaded"

RESTRICT="test" # Test-suite depends on deprecated system-fileio and system-filepath

PATCHES=(
	"${FILESDIR}/${PN}-2.18.4-remove-ghc-9_8-conditional.patch"
)

RDEPEND=">=dev-haskell/async-2.0.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.14.4:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/base16-bytestring-1.0:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/constraints-0.11:=[profile?] <dev-haskell/constraints-0.15:=[profile?]
	>=dev-haskell/cryptonite-0.24:=[profile?] <dev-haskell/cryptonite-0.31:=[profile?]
	>=dev-haskell/data-ordlist-0.4:=[profile?] <dev-haskell/data-ordlist-0.5:=[profile?]
	>=dev-haskell/fgl-5.5.2.3:=[profile?] <dev-haskell/fgl-5.9:=[profile?]
	>=dev-haskell/hashable-1.2.3.3:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/haskeline-0.7.2:=[profile?] <dev-haskell/haskeline-0.9:=[profile?]
	>=dev-haskell/html-1.0.1.2:=[profile?] <dev-haskell/html-1.1:=[profile?]
	>=dev-haskell/http-conduit-2.3:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/http-types-0.12.1:=[profile?] <dev-haskell/http-types-0.12.5:=[profile?]
	>=dev-haskell/memory-0.14:=[profile?] <dev-haskell/memory-0.19:=[profile?]
	>=dev-haskell/mmap-0.5.9:=[profile?] <dev-haskell/mmap-0.6:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.8:=[profile?]
	>=dev-haskell/old-time-1.1.0.3:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	>=dev-haskell/parsec-3.1.9:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/regex-applicative-0.2:=[profile?] <dev-haskell/regex-applicative-0.4:=[profile?]
	>=dev-haskell/regex-base-0.94.0.1:=[profile?] <dev-haskell/regex-base-0.94.1:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.2:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	>=dev-haskell/safe-0.3.20:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/tar-0.5:=[profile?] <dev-haskell/tar-0.7:=[profile?]
	>=dev-haskell/temporary-1.2.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/terminal-size-0.3.4:=[profile?] <dev-haskell/terminal-size-0.4:=[profile?]
	>=dev-haskell/text-1.2.1.3:=[profile?] <dev-haskell/text-2.2:=[profile?]
	<dev-haskell/tls-2.2:=[profile?]
	>=dev-haskell/unix-compat-0.6:=[profile?] <dev-haskell/unix-compat-0.8:=[profile?]
	>=dev-haskell/utf8-string-1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-haskell/zip-archive-0.3:=[profile?] <dev-haskell/zip-archive-0.5:=[profile?]
	>=dev-haskell/zlib-0.6.1.2:=[profile?] <dev-haskell/zlib-0.8:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0 <dev-haskell/cabal-3.11
"
#test? ( >=dev-haskell/cmdargs-0.10.10 <dev-haskell/cmdargs-0.11
# 		>=dev-haskell/findbin-0.0.5 <dev-haskell/findbin-0.1
# 		>=dev-haskell/hunit-1.3 <dev-haskell/hunit-1.7
# 		>=dev-haskell/leancheck-0.9 <dev-haskell/leancheck-1.1
# 		>=dev-haskell/monad-control-0.3.2 <dev-haskell/monad-control-1.1
# 		>=dev-haskell/quickcheck-2.13 <dev-haskell/quickcheck-2.16
# 		>=dev-haskell/quickcheck-instances-0.3.29.1 <dev-haskell/quickcheck-instances-0.4
# 		>=dev-haskell/system-filepath-0.4.7 <dev-haskell/system-filepath-0.5
# 		>=dev-haskell/test-framework-0.8.1.1 <dev-haskell/test-framework-0.9
# 		>=dev-haskell/test-framework-hunit-0.3.0.2 <dev-haskell/test-framework-hunit-0.4
# 		>=dev-haskell/test-framework-leancheck-0.0.1 <dev-haskell/test-framework-leancheck-0.1
# 		>=dev-haskell/test-framework-quickcheck2-0.3.0.3 <dev-haskell/test-framework-quickcheck2-0.4
# 		dev-haskell/transformers-base
# 		|| ( <dev-haskell/system-fileio-0.3.16.5
# 			( >dev-haskell/system-fileio-0.3.16.5 <dev-haskell/system-fileio-0.4 ) ) )
# "

src_configure() {
	haskell-cabal_src_configure \
		--flag=executable \
		--flag=-hpc \
		--flag=http \
		--flag=library \
		--flag=-optimize \
		--flag=pkgconfig \
		--flag=-rts \
		--flag=-static \
		$(cabal_flag terminfo terminfo) \
		$(cabal_flag threaded threaded) \
		--flag=-warn-as-error
}

#pkg_pretend() {
#	if use test; then
#		ewarn "Tests take a very long time to complete. You may want to disable them"
#		ewarn "on older machines."
#	fi
#}
