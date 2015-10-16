# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

WX_GTK_VER="3.0"

inherit eutils bzr git-2 cmake-utils wxwidgets fdo-mime

DESCRIPTION="Electronic Schematic and PCB design tools"
HOMEPAGE="http://www.kicad-pcb.org"

EGIT_REPO_URI="https://github.com/KiCad/kicad-source-mirror.git"
SRC_URI=""

LICENSE="GPL-2 kicad-doc"
SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="python components-library doc"
LANGS="de en es fr hu it ja pl pt ru zh_CN"
for lang in ${LANGS} ; do
	IUSE="${IUSE} linguas_${lang}"
done

CDEPEND="x11-libs/wxGTK:${WX_GTK_VER}[opengl,X]
	dev-python/wxpython:${WX_GTK_VER}[opengl]
	dev-vcs/bzr"

DEPEND="${CDEPEND}
	dev-util/cmake
	dev-libs/boost[python]
	doc? ( app-doc/doxygen )
	python? ( dev-lang/swig )"

RDEPEND="${CDEPEND}
	sys-libs/zlib
	sci-electronics/electronics-menu"

src_configure() {
	bzr whoami "Mark Fedurin <me@hitecnologys.org>"
	cmake-utils_src_configure
}

src_compile() {
	bzr whoami "Mark Fedurin <me@hitecnologys.org>"
	cmake-utils_src_compile all
}

src_install() {
	bzr whoami "Mark Fedurin <me@hitecnologys.org>"
	cmake-utils_src_install

	if use components-library; then
		sh "${WORKDIR}/${P}/scripts/library-repos-install.sh" --install-or-update
	fi

	cmake-utils_src_install
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update

	elog "You may want to emerge media-gfx/wings if you want to create 3D models of components."
}

pkg_postrm() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update
}
