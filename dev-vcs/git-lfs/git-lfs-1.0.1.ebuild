# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="An open source Git extension for versioning large files"
HOMEPAGE="https://git-lfs.github.com/"
SRC_URI="https://github.com/github/git-lfs/releases/download/v${PV}/git-lfs-linux-amd64-${PV}.tar.gz"

LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"

src_install() {
	dodoc README.md CHANGELOG.md
	dobin git-lfs
}

pkg_config() {
	git lfs init
}
