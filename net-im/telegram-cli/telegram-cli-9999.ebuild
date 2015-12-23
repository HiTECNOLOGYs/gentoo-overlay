# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="CLI client for Telegram IM"
HOMEPAGE="https://github.com/vysheng/tg"
EGIT_REPO_URI="https://github.com/vysheng/tg.git"
EGIT_BRANCH="master"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lua"

DEPEND="sys-libs/zlib
	    sys-libs/readline
	    dev-libs/libconfig
	    dev-libs/openssl
	    dev-libs/jansson
	    lua? ( dev-lang/lua )"
RDEPEND="${DEPEND}"

src_configure() {
  econf $(use_enable lua liblua ) --with-progname=telegram-cli
}

src_install() {
  dobin bin/telegram-cli
  insinto /etc/telegram-cli/
  newins tg-server.pub server.pub
}
