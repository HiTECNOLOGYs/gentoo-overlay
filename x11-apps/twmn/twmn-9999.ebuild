# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit qmake-utils

if [[ "${PV}" = "9999" ]]; then
	inherit git-2
fi

DESCRIPTION="A notification system for tiling window managers"
HOMEPAGE="https://github.com/sboli/twmn"
LICENSE="GPL-3"

if [[ ${PV} = 9999 ]]; then
	EGIT_REPO_URI="https://github.com/sboli/twmn"
	KEYWORDS=""
else
	SRC_URI="https://github.com/sboli/twmn/archive/v${PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

SLOT="0"
IUSE="qt4 +qt5 examples" # We're modern people and we're going to force QT5.
REQUIRED_USE="^^ ( qt4 qt5 )"

DOCS=( README.md LICENSE TODO )

DEPEND="
	qt4? (
		dev-qt/qtcore:4
		dev-qt/qtscript:4
		dev-qt/qtdeclarative:4
		dev-qt/qtgui:4
	)
	qt5? (
		dev-qt/qtcore:5
		dev-qt/qtdeclarative:5
		dev-qt/qtgui:5
		dev-qt/qtwidgets:5
	)
	dev-libs/boost"
RDEPEND="${DEPEND}"

src_configure()
{
	if use qt4; then
		eqmake4
	elif use qt5; then
		eqmake5
	fi
}

src_install()
{
    dobin bin/twmnd bin/twmnc
	dodoc ${DOCS[@]}
	if use examples; then
		dodoc "examples"
	fi
}
