EAPI=8

DESCRIPTION="Fast system fetch written in D"
HOMEPAGE="https://github.com/wholos/logifetch"
EGIT_REPO_URI="https://github.com/wholos/logifetch.git"

inherit git-r3 dlang

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="
	sys-apps/pciutils
"
DEPEND="
	${RDEPEND}
	dev-lang/dmd
	dev-util/just
"

src_compile() {
	just all
}

src_install() {
	dobin logifetch
}
