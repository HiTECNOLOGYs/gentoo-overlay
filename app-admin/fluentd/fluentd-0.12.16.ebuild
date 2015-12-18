# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 jruby"
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Fluentd is an open source data collector for unified logging layer"
HOMEPAGE="http://www.fluentd.org/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+jemalloc"

DEPEND="jemalloc? ( dev-libs/jemalloc )"
RDEPEND="${DEPEND}"

pkg_postinst() {
  ebegin "Creating fluentd user and group"
  enewgroup ${PN}
  enewuser ${PN} -1 -1 -1 ${PN}
  eend $?

  newinitd "${FILESDIR}/fluentd.rc" fluentd
}
