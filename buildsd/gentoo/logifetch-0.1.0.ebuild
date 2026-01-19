# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION=""
HOMEPAGE="https://github.com/wholos/logifetch"
SRC_URI="https://github.com/wholos/logifetch"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-lang/dmd
	dev-build/just
"
RDEPEND="${DEPEND}
	sys-apps/pciutils
"
BDEPEND="${DEPEND}"

src_compile() {
	just all
}

src_install() {
	dobin logifetch
}
