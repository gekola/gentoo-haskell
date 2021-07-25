# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES=""
inherit vim-plugin haskell-cabal git-r3

DESCRIPTION="Create ctags compatible tags files for Haskell programs"
HOMEPAGE="https://github.com/bitc/lushtags"
#SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"
EGIT_REPO_URI="https://github.com/bitc/lushtags.git"

LICENSE="MIT"
SLOT="0"
#KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	>=dev-haskell/haskell-src-exts-1.11
	>=dev-haskell/text-0.11
	>=dev-haskell/vector-0.9
	>=dev-lang/ghc-6.10.4
"

src_prepare() {
	default

	cabal_chdeps \
		'text == 0.11.*' 'text >= 0.11'
}

src_install() {
	haskell-cabal_src_install

	# vim-plugin.eclass is insane
	dodir /usr/share/vim/vimfiles/plugin
	cp "${S}"/plugin/tagbar-haskell.vim "${ED}"/usr/share/vim/vimfiles/plugin/ || die
}

pkg_postinst() {
	haskell-cabal_pkg_postinst
	vim-plugin_pkg_postinst
}
