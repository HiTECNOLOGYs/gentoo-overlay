# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

WX_GTK_VER="3.0"

inherit eutils git-2 cmake-utils

DESCRIPTION="Parts library for kicad"
HOMEPAGE="http://www.kicad-pcb.org"

EGIT_REPO_URI="https://github.com/KiCad/kicad-library.git"
SRC_URI=""

LICENSE="GPL-2 kicad-doc"
SLOT="0"

KEYWORDS="**"

IUSE=""

DEPEND="${CDEPEND}
		dev-util/cmake"

RDEPEND="${CDEPEND}"

src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile all
}

src_install() {
	cmake-utils_src_install
}
