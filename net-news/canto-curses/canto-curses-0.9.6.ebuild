# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PYTHON_COMPAT=( python{3_3,3_4} )
PYTHON_REQ_USE="xml(+),threads(+)"
inherit distutils-r1 multilib git-2

DESCRIPTION="RSS aggregator."
HOMEPAGE="http://codezen.org/canto-ng"

EGIT_BRANCH="master"
EGIT_REPO_URI="https://github.com/themoken/canto-curses.git"

if [[ "${PV}" != "9999" ]]; then
	EGIT_COMMIT="v${PV}"
fi

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~i386"

RDEPEND=">=net-news/canto-daemon-0.9.1[${PYTHON_USEDEP}]"

python_prepare_all() {
	# Respect libdir during plugins installation
	sed -i -e "s:lib/canto:$(get_libdir)/canto:" setup.py || die

	distutils-r1_python_prepare_all
}
