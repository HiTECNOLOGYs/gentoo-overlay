# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

declare -A PLUGINS{_REPO_NAME,_COMMIT,_URL,_PV}
declare -A mods

# regenerate url list
#for i in *; do pushd $i > /dev/null; name="$i"; rev=`git show-ref -s HEAD`; url=`git config remote.origin.url`; repo_base=`dirname "$url"`; repo_name=`basename "$url"`; echo "PLUGINS_REPO_NAME[$name]=$repo_name"; echo "PLUGINS_COMMIT[$name]=$rev"; echo "PLUGINS_PV[$name]=\"\${PLUGINS_REPO_NAME[$name]}-\${PLUGINS_COMMIT[$name]}\""; echo "PLUGINS_URL[$name]=\"$repo_base/\${PLUGINS_REPO_NAME[$name]}/archive/\${PLUGINS_COMMIT[$name]}.zip\""; echo; popd > /dev/null; done

PLUGINS_REPO_NAME[elixir]=elixir
PLUGINS_COMMIT[elixir]=1d9548fd285d243721b7eba71912bde2ffd1f6c3
PLUGINS_PV[elixir]="${PLUGINS_REPO_NAME[elixir]}-${PLUGINS_COMMIT[elixir]}"
PLUGINS_URL[elixir]="https://github.com/elixir-lang/${PLUGINS_REPO_NAME[elixir]}/archive/${PLUGINS_COMMIT[elixir]}.zip"

PLUGINS_REPO_NAME[eredis]=eredis
PLUGINS_COMMIT[eredis]=bf12ecb30253c84a2331f4f0d93fd68856fcb9f4
PLUGINS_PV[eredis]="${PLUGINS_REPO_NAME[eredis]}-${PLUGINS_COMMIT[eredis]}"
PLUGINS_URL[eredis]="https://github.com/wooga/${PLUGINS_REPO_NAME[eredis]}/archive/${PLUGINS_COMMIT[eredis]}.zip"

PLUGINS_REPO_NAME[esip]=p1_sip
PLUGINS_COMMIT[esip]=d662d3fe7f6288b444ea321d854de0bd6d40e022
PLUGINS_PV[esip]="${PLUGINS_REPO_NAME[esip]}-${PLUGINS_COMMIT[esip]}"
PLUGINS_URL[esip]="https://github.com/processone/${PLUGINS_REPO_NAME[esip]}/archive/${PLUGINS_COMMIT[esip]}.zip"

PLUGINS_REPO_NAME[goldrush]=goldrush
PLUGINS_COMMIT[goldrush]=64864ba7fcf40988361340e48680b49a2c2938cf
PLUGINS_PV[goldrush]="${PLUGINS_REPO_NAME[goldrush]}-${PLUGINS_COMMIT[goldrush]}"
PLUGINS_URL[goldrush]="https://github.com/DeadZen/${PLUGINS_REPO_NAME[goldrush]}/archive/${PLUGINS_COMMIT[goldrush]}.zip"

PLUGINS_REPO_NAME[jiffy]=jiffy
PLUGINS_COMMIT[jiffy]=cfc61a2e952dc3182e0f9b1473467563699992e2
PLUGINS_PV[jiffy]="${PLUGINS_REPO_NAME[jiffy]}-${PLUGINS_COMMIT[jiffy]}"
PLUGINS_URL[jiffy]="https://github.com/davisp/${PLUGINS_REPO_NAME[jiffy]}/archive/${PLUGINS_COMMIT[jiffy]}.zip"

PLUGINS_REPO_NAME[lager]=lager
PLUGINS_COMMIT[lager]=363ca0a8573c2c556d83d7679033bc8b31ef25e6
PLUGINS_PV[lager]="${PLUGINS_REPO_NAME[lager]}-${PLUGINS_COMMIT[lager]}"
PLUGINS_URL[lager]="https://github.com/basho/${PLUGINS_REPO_NAME[lager]}/archive/${PLUGINS_COMMIT[lager]}.zip"

PLUGINS_REPO_NAME[meck]=meck
PLUGINS_COMMIT[meck]=dde759050eff19a1a80fd854d7375174b191665d
#PLUGINS_COMMIT[meck]=0845277398b8326f9dddddd9fc3cf73467ba6877
PLUGINS_PV[meck]="${PLUGINS_REPO_NAME[meck]}-${PLUGINS_COMMIT[meck]}"
PLUGINS_URL[meck]="https://github.com/eproxus/${PLUGINS_REPO_NAME[meck]}/archive/${PLUGINS_COMMIT[meck]}.zip"

PLUGINS_REPO_NAME[oauth2]=oauth2
PLUGINS_COMMIT[oauth2]=e6da9912e5d8f658e7e868f41a102d085bdbef59
PLUGINS_PV[oauth2]="${PLUGINS_REPO_NAME[oauth2]}-${PLUGINS_COMMIT[oauth2]}"
PLUGINS_URL[oauth2]="https://github.com/prefiks/${PLUGINS_REPO_NAME[oauth2]}/archive/${PLUGINS_COMMIT[oauth2]}.zip"

PLUGINS_REPO_NAME[p1_cache_tab]=cache_tab
PLUGINS_COMMIT[p1_cache_tab]=f7ea12b0ba962a3d2f9a406d2954cf7de4e27230
PLUGINS_PV[p1_cache_tab]="${PLUGINS_REPO_NAME[p1_cache_tab]}-${PLUGINS_COMMIT[p1_cache_tab]}"
PLUGINS_URL[p1_cache_tab]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_cache_tab]}/archive/${PLUGINS_COMMIT[p1_cache_tab]}.zip"

PLUGINS_REPO_NAME[p1_iconv]=eiconv
PLUGINS_COMMIT[p1_iconv]=8b7542b1aaf0a851f335e464956956985af6d9a2
PLUGINS_PV[p1_iconv]="${PLUGINS_REPO_NAME[p1_iconv]}-${PLUGINS_COMMIT[p1_iconv]}"
PLUGINS_URL[p1_iconv]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_iconv]}/archive/${PLUGINS_COMMIT[p1_iconv]}.zip"

PLUGINS_REPO_NAME[p1_mysql]=mysql
PLUGINS_COMMIT[p1_mysql]=dfa87da95f8fdb92e270741c2a53f796b682f918
PLUGINS_PV[p1_mysql]="${PLUGINS_REPO_NAME[p1_mysql]}-${PLUGINS_COMMIT[p1_mysql]}"
PLUGINS_URL[p1_mysql]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_mysql]}/archive/${PLUGINS_COMMIT[p1_mysql]}.zip"

PLUGINS_REPO_NAME[p1_pam]=epam
PLUGINS_COMMIT[p1_pam]=d3ce290b7da75d780a03e86e7a8198a80e9826a6
PLUGINS_PV[p1_pam]="${PLUGINS_REPO_NAME[p1_pam]}-${PLUGINS_COMMIT[p1_pam]}"
PLUGINS_URL[p1_pam]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_pam]}/archive/${PLUGINS_COMMIT[p1_pam]}.zip"

PLUGINS_REPO_NAME[p1_pgsql]=pgsql
PLUGINS_COMMIT[p1_pgsql]=e72c03c60bfcb56bbb5d259342021d9cb3581dac
PLUGINS_PV[p1_pgsql]="${PLUGINS_REPO_NAME[p1_pgsql]}-${PLUGINS_COMMIT[p1_pgsql]}"
PLUGINS_URL[p1_pgsql]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_pgsql]}/archive/${PLUGINS_COMMIT[p1_pgsql]}.zip"

PLUGINS_REPO_NAME[p1_logger]=p1_logger
PLUGINS_COMMIT[p1_logger]=3e19507fd5606a73694917158767ecb3f5704e3f
PLUGINS_PV[p1_logger]="${PLUGINS_REPO_NAME[p1_logger]}-${PLUGINS_COMMIT[p1_logger]}"
PLUGINS_URL[p1_logger]="https://github.com/processone/p1_logger/archive/${PLUGINS_COMMIT[p1_logger]}.zip"

PLUGINS_REPO_NAME[p1_stringprep]=stringprep
PLUGINS_COMMIT[p1_stringprep]=3c640237a3a7831dc39de6a6d329d3a9af25c579
PLUGINS_PV[p1_stringprep]="${PLUGINS_REPO_NAME[p1_stringprep]}-${PLUGINS_COMMIT[p1_stringprep]}"
PLUGINS_URL[p1_stringprep]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_stringprep]}/archive/${PLUGINS_COMMIT[p1_stringprep]}.zip"

PLUGINS_REPO_NAME[p1_stun]=stun
PLUGINS_COMMIT[p1_stun]=061bdae484268cbf0457ad4797e74b8516df3ad1
PLUGINS_PV[p1_stun]="${PLUGINS_REPO_NAME[p1_stun]}-${PLUGINS_COMMIT[p1_stun]}"
PLUGINS_URL[p1_stun]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_stun]}/archive/${PLUGINS_COMMIT[p1_stun]}.zip"

PLUGINS_REPO_NAME[p1_tls]=tls
PLUGINS_COMMIT[p1_tls]=e56321afd974e9da33da913cd31beebc8e73e75f
PLUGINS_PV[p1_tls]="${PLUGINS_REPO_NAME[p1_tls]}-${PLUGINS_COMMIT[p1_tls]}"
PLUGINS_URL[p1_tls]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_tls]}/archive/${PLUGINS_COMMIT[p1_tls]}.zip"

PLUGINS_REPO_NAME[p1_utils]=p1_utils
PLUGINS_COMMIT[p1_utils]=d7800881e6702723ce58b7646b60c9e4cd25d563
PLUGINS_PV[p1_utils]="${PLUGINS_REPO_NAME[p1_utils]}-${PLUGINS_COMMIT[p1_utils]}"
PLUGINS_URL[p1_utils]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_utils]}/archive/${PLUGINS_COMMIT[p1_utils]}.zip"

PLUGINS_REPO_NAME[p1_xml]=xml
PLUGINS_COMMIT[p1_xml]=1c8b016b0ac7986efb823baf1682a43565449e65
PLUGINS_PV[p1_xml]="${PLUGINS_REPO_NAME[p1_xml]}-${PLUGINS_COMMIT[p1_xml]}"
PLUGINS_URL[p1_xml]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_xml]}/archive/${PLUGINS_COMMIT[p1_xml]}.zip"

PLUGINS_REPO_NAME[p1_yaml]=p1_yaml
PLUGINS_COMMIT[p1_yaml]=79f756ba73a235c4d3836ec07b5f7f2b55f49638
PLUGINS_PV[p1_yaml]="${PLUGINS_REPO_NAME[p1_yaml]}-${PLUGINS_COMMIT[p1_yaml]}"
PLUGINS_URL[p1_yaml]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_yaml]}/archive/${PLUGINS_COMMIT[p1_yaml]}.zip"

PLUGINS_REPO_NAME[p1_zlib]=zlib
PLUGINS_COMMIT[p1_zlib]=e3d4222b7aae616d7ef2e7e2fa0bbf451516c602
PLUGINS_PV[p1_zlib]="${PLUGINS_REPO_NAME[p1_zlib]}-${PLUGINS_COMMIT[p1_zlib]}"
PLUGINS_URL[p1_zlib]="https://github.com/processone/${PLUGINS_REPO_NAME[p1_zlib]}/archive/${PLUGINS_COMMIT[p1_zlib]}.zip"

PLUGINS_REPO_NAME[protobuffs]=erlang_protobuffs
PLUGINS_COMMIT[protobuffs]=cf169c3f1b5f0fe6e0ff9affada7220f0248d381
PLUGINS_PV[protobuffs]="${PLUGINS_REPO_NAME[protobuffs]}-${PLUGINS_COMMIT[protobuffs]}"
PLUGINS_URL[protobuffs]="https://github.com/basho/${PLUGINS_REPO_NAME[protobuffs]}/archive/${PLUGINS_COMMIT[protobuffs]}.zip"

PLUGINS_REPO_NAME[rebar_elixir_plugin]=rebar_elixir_plugin
PLUGINS_COMMIT[rebar_elixir_plugin]=7058379b7c7e017555647f6b9cecfd87cd50f884
PLUGINS_PV[rebar_elixir_plugin]="${PLUGINS_REPO_NAME[rebar_elixir_plugin]}-${PLUGINS_COMMIT[rebar_elixir_plugin]}"
PLUGINS_URL[rebar_elixir_plugin]="https://github.com/yrashk/${PLUGINS_REPO_NAME[rebar_elixir_plugin]}/archive/${PLUGINS_COMMIT[rebar_elixir_plugin]}.zip"

PLUGINS_REPO_NAME[riakc]=riak-erlang-client
PLUGINS_COMMIT[riakc]=1e59b03d2ce827714d25cb50b4bca98fbea4e170
PLUGINS_PV[riakc]="${PLUGINS_REPO_NAME[riakc]}-${PLUGINS_COMMIT[riakc]}"
PLUGINS_URL[riakc]="https://github.com/basho/${PLUGINS_REPO_NAME[riakc]}/archive/${PLUGINS_COMMIT[riakc]}.zip"

PLUGINS_REPO_NAME[riak_pb]=riak_pb
PLUGINS_COMMIT[riak_pb]=833ed9a05cba45df01a584bd3f47d0f04d8e001e
PLUGINS_PV[riak_pb]="${PLUGINS_REPO_NAME[riak_pb]}-${PLUGINS_COMMIT[riak_pb]}"
PLUGINS_URL[riak_pb]="https://github.com/basho/${PLUGINS_REPO_NAME[riak_pb]}/archive/${PLUGINS_COMMIT[riak_pb]}.zip"

PLUGINS_REPO_NAME[sqlite3]=erlang-sqlite3
PLUGINS_COMMIT[sqlite3]=8350dc603804c503f99c92bfd2eab1dd6885758e
PLUGINS_PV[sqlite3]="${PLUGINS_REPO_NAME[sqlite3]}-${PLUGINS_COMMIT[sqlite3]}"
PLUGINS_URL[sqlite3]="https://github.com/alexeyr/${PLUGINS_REPO_NAME[sqlite3]}/archive/${PLUGINS_COMMIT[sqlite3]}.zip"

PLUGINS_REPO_NAME[xmlrpc]=xmlrpc
PLUGINS_COMMIT[xmlrpc]=42e6e96a0fe7106830274feed915125feb1056f3
PLUGINS_PV[xmlrpc]="${PLUGINS_REPO_NAME[xmlrpc]}-${PLUGINS_COMMIT[xmlrpc]}"
PLUGINS_URL[xmlrpc]="https://github.com/rds13/${PLUGINS_REPO_NAME[xmlrpc]}/archive/${PLUGINS_COMMIT[xmlrpc]}.zip"

inherit eutils multilib pam ssl-cert systemd

DESCRIPTION="The Erlang Jabber Daemon"
HOMEPAGE="http://www.ejabberd.im/ https://github.com/processone/ejabberd/"
SRC_URI="http://www.process-one.net/downloads/${PN}/${PV}/${P}.tgz
	mysql?	( "${PLUGINS_URL[p1_mysql]}" -> "${PLUGINS_PV[p1_mysql]}.zip" )
	postgres? ( "${PLUGINS_URL[p1_pgsql]}" -> "${PLUGINS_PV[p1_pgsql]}.zip" )
	sqlite?	( "${PLUGINS_URL[sqlite3]}" -> "${PLUGINS_PV[sqlite3]}.zip" )
	pam?	( "${PLUGINS_URL[p1_pam]}" -> "${PLUGINS_PV[p1_pam]}.zip" )
	zlib?	( "${PLUGINS_URL[p1_zlib]}" -> "${PLUGINS_PV[p1_zlib]}.zip" )
	riak?	( "${PLUGINS_URL[riakc]}" -> "${PLUGINS_PV[riakc]}.zip"
		  "${PLUGINS_URL[riak_pb]}" -> "${PLUGINS_PV[riak_pb]}.zip"
		  "${PLUGINS_URL[protobuffs]}" -> "${PLUGINS_PV[protobuffs]}.zip" )
	elixir?	( "${PLUGINS_URL[rebar_elixir_plugin]}" -> "${PLUGINS_PV[rebar_elixir_plugin]}.zip"
		  "${PLUGINS_URL[elixir]}" -> "${PLUGINS_PV[elixir]}.zip" )
	iconv?	( "${PLUGINS_URL[p1_iconv]}" -> "${PLUGINS_PV[p1_iconv]}.zip" )
	lager?	( "${PLUGINS_URL[lager]}" -> "${PLUGINS_PV[lager]}.zip"
		  "${PLUGINS_URL[goldrush]}" -> "${PLUGINS_PV[goldrush]}.zip" )
	!lager?	( "${PLUGINS_URL[p1_logger]}" -> "${PLUGINS_PV[p1_logger]}.zip" )
	tools?	( "${PLUGINS_URL[meck]}" -> "${PLUGINS_PV[meck]}.zip" )
	redis?	( "${PLUGINS_URL[eredis]}" -> "${PLUGINS_PV[eredis]}.zip" )
"

mods[core]="p1_cache_tab p1_tls p1_stringprep p1_xml esip p1_stun p1_yaml p1_utils jiffy oauth2 xmlrpc"

for plugin in ${mods[core]} ; do
	SRC_URI+=" ${PLUGINS_URL[$plugin]} -> ${PLUGINS_PV[$plugin]}.zip" ; done

RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ia64 ~ppc ~sparc ~x86"
EJABBERD_MODULES="mod_bosh mod_irc mod_muc mod_proxy65 mod_pubsub"
IUSE="captcha debug elixir +iconv +lager ldap mssql mysql nif odbc pam postgres redis riak sqlite ssl tools +zlib ${EJABBERD_MODULES}"

DEPEND=">=net-im/jabber-base-0.01
	>=dev-libs/expat-1.95
	>=dev-libs/libyaml-0.1.4
	>=dev-lang/erlang-17.1[ssl]
	>=dev-libs/openssl-1.0.0
	odbc? ( dev-db/unixODBC[-minimal] )
	ldap? ( =net-nds/openldap-2* )
	elixir? ( dev-lang/elixir )
	captcha? ( media-gfx/imagemagick[truetype,png] )
	zlib? ( >=sys-libs/zlib-1.2.3 )"
RDEPEND="${DEPEND}
	>=sys-apps/shadow-4.1.4.2-r3
	pam? ( virtual/pam )"

REQUIRED_USE="mssql? ( odbc )"

# paths in net-im/jabber-base
JABBER_ETC="${EPREFIX}/etc/jabber"
#JABBER_RUN="/var/run/jabber"
JABBER_SPOOL="${EPREFIX}/var/spool/jabber"
JABBER_LOG="${EPREFIX}/var/log/jabber"
JABBER_DOC="${EPREFIX}/usr/share/doc/${PF}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ejabberdctl.patch

	#emulate rebar unpack
	mkdir "${S}/deps"
	for plugin in ${!PLUGINS_COMMIT[@]}; do
	    mv "$WORKDIR/${PLUGINS_PV[$plugin]}" "$S/deps/${plugin}" 2>/dev/null
	done
	touch "${S}"/deps/.got

	#patch rebar dependency checks
	sed -e "s/vsn, git/vsn, \"0.14.4\"/" \
		-i deps/jiffy/src/jiffy.app.src || die

	if use riak; then
	sed -e "s/vsn, git/vsn, \"1.4.2\"/" \
		-i deps/riakc/src/riakc.app.src || die
	sed -e "s/vsn, git/vsn, \"2.1.0.2\"/" \
		-i deps/riak_pb/src/riak_pb.app.src || die
	sed -e "s/vsn, git/vsn, \"0.8.1p5\"/" \
		-i deps/protobuffs/src/protobuffs.app.src || die
	fi

	if use elixir; then
	sed -e "s/vsn, git/vsn, \"7058379\"/" \
		-i deps/rebar_elixir_plugin/src/rebar_elixir_plugin.app.src || die
	fi

	# don't install release notes (we'll do this manually)
	sed '/install .* [.][.]\/doc\/[*][.]txt $(DOCDIR)/d' -i Makefile.in || die
	# Set correct paths
	sed -e "/^ETCDIR[[:space:]]*=/{s:@sysconfdir@/ejabberd:${JABBER_ETC}:}" \
		-e "/^LOGDIR[[:space:]]*=/{s:@localstatedir@/log/ejabberd:${JABBER_LOG}:}" \
		-e "/^SPOOLDIR[[:space:]]*=/{s:@localstatedir@/lib/ejabberd:${JABBER_SPOOL}:}" \
			-i Makefile.in || die
	sed -e "s|\(ETC_DIR=\){{sysconfdir}}.*|\1${JABBER_ETC}|" \
		-e "s|\(LOGS_DIR=\){{localstatedir}}.*|\1${JABBER_LOG}|" \
		-e "s|\(SPOOL_DIR=\){{localstatedir}}.*|\1${JABBER_SPOOL}|" \
			-i ejabberdctl.template || die

	# fix up the ssl cert paths in ejabberd.yml to use our cert and
	# also use the correct pam service name
	sed -e "s:/path/to/ssl.pem:/etc/ssl/ejabberd/server.pem:g" \
		-e "s:pamservicename:xmpp:" \
		-i ejabberd.yml.example || die

	# correct path to captcha script in default ejabberd.yml
	sed -e 's|\(captcha_cmd:[[:space:]]*"\).\+"|\1/usr/'$(get_libdir)'/erlang/lib/'${PN}'/priv/bin/captcha.sh"|' \
		-i ejabberd.yml.example || die

	# disable mod_irc in ejabberd.yml
	if ! use mod_irc; then
		sed -e "s/mod_irc:/#mod_irc:/" \
			-i ejabberd.yml.example || die
	fi

	epatch_user
}

src_configure() {
	econf \
		--docdir="${EPREFIX}/usr/share/doc/${PF}/html" \
		--libdir="${EPREFIX}/usr/$(get_libdir)/erlang/lib/" \
		$(use_enable mysql) \
		$(use_enable mssql) \
		$(use_enable postgres pgsql) \
		$(use_enable sqlite) \
		$(use_enable riak) \
		$(use_enable redis) \
		$(use_enable elixir) \
		$(use_enable iconv) \
		$(use_enable lager) \
		$(use_enable tools) \
		$(use_enable nif) \
		$(use_enable odbc) \
		$(use_enable zlib) \
		$(use_enable pam) \
		--enable-user=jabber
}

src_compile() {
	emake $(use debug && echo debug=true ejabberd_debug=true)
}

src_install() {
	default

	# Pam helper module permissions
	# http://docs.ejabberd.im/admin/guide/configuration/#pam-authentication
	if use pam; then
		pamd_mimic_system xmpp auth account || die "Cannot create pam.d file"
		fowners root:jabber "/usr/$(get_libdir)/erlang/lib/p1_pam/priv/bin/epam"
		fperms 4750 "/usr/$(get_libdir)/erlang/lib/p1_pam/priv/bin/epam"
	fi

	cd "${WORKDIR}"/${P}/doc
	#dodoc release_notes_${PV%%_rc*}.txt

	newinitd "${FILESDIR}"/${PN}-3.initd ${PN}
	newconfd "${FILESDIR}"/${PN}-3.confd ${PN}
	systemd_dounit "${FILESDIR}"/${PN}.service
	systemd_dotmpfilesd "${FILESDIR}"/${PN}.tmpfiles.conf

	insinto /etc/logrotate.d
	newins "${FILESDIR}"/${PN}.logrotate ${PN}
}

pkg_postinst() {
	elog "For configuration instructions, please see"
	elog "/usr/share/doc/${PF}/html/guide.html, or the online version at"
	elog "http://docs.ejabberd.im/admin/guide/"

	if [[ -z ${REPLACING_VERSIONS} ]] ; then
		elog "For configuration instructions, please see"
		elog "/usr/share/doc/${PF}/html/guide.html, or the online version at"
		elog "http://docs.ejabberd.im/admin/guide/"
	else
		elog "Ejabberd now defaults to using a YAML format for its config file."
		elog "The old ejabberd.cfg file can be converted using the following instructions:"
		echo
		elog "1. Make sure all processes related to the previous version of ejabberd aren't running."
		elog "   Usually this just means the ejabberd daemon and possibly the pam-related processes"
		elog "   (epmd and epam) if pam support is enabled."
		elog "2. Run \`ejabberdctl start\` with sufficient permissions. Note that this can fail to"
		elog "   start ejabberd properly for various reasons. Check ejabberd's main log file"
		elog "   at /var/log/jabber/ejabberd.log to confirm it started successfully."
		elog "3. Run \`ejabberdctl convert_to_yaml /etc/jabber/ejabberd.cfg /etc/jabber/ejabberd.yml.new\`"
		elog "   with sufficient permissions, edit and rename /etc/jabber/ejabberd.yml.new to"
		elog "   /etc/jabber/ejabberd.yml, and finally restart ejabberd with the new config file."
		echo
	fi

	SSL_ORGANIZATION="${SSL_ORGANIZATION:-Ejabberd XMPP Server}"
	install_cert /etc/ssl/ejabberd/server
	# Fix ssl cert permissions bug #369809
	chown root:jabber "${EROOT}/etc/ssl/ejabberd/server.pem"
	chmod 0440 "${EROOT}/etc/ssl/ejabberd/server.pem"
}
