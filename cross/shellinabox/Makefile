PKG_NAME = shellinabox
PKG_VERS = 5c7fb5cde2d2a74775af040549bb5cb11aae6790
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/shellinabox/shellinabox/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/openssl

HOMEPAGE = https://code.google.com/p/shellinabox/
COMMENT  = Shell In A Box implements a web server that can export arbitrary command line tools to a web based terminal emulator. This emulator is accessible to any JavaScript and CSS enabled web browser and does not require any additional browser plugins.
LICENSE  = GNU GPL v2

GNU_CONFIGURE = 1
CONFIGURE_ARGS = 
PRE_CONFIGURE_TARGET = shellinaboxPreConfigure

include ../../mk/spksrc.cross-cc.mk

.PHONY: shellinaboxPreConfigure
shellinaboxPreConfigure:
	$(RUN) autoreconf -i
