PKG_NAME = shellinabox
PKG_VERS = 20c3fe612ef1cf2b316aa9fd7e143a78fd095982
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/JGRennison/shellinabox/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/openssl

HOMEPAGE = https://code.google.com/p/shellinabox/
COMMENT  = Shell In A Box implements a web server that can export arbitrary command line tools to a web based terminal emulator. This emulator is accessible to any JavaScript and CSS enabled web browser and does not require any additional browser plugins.
LICENSE  = GNU GPL v2

GNU_CONFIGURE = 1

include ../../mk/spksrc.cross-cc.mk
