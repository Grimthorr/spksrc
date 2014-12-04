PKG_NAME = shellinabox
PKG_VERS = 4f472ac831c20080ff97c70bf27b9b425f4dec6a
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/JGRennison/shellinabox/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = https://code.google.com/p/shellinabox/
COMMENT  = Shell In A Box implements a web server that can export arbitrary command line tools to a web based terminal emulator. This emulator is accessible to any JavaScript and CSS enabled web browser and does not require any additional browser plugins.
LICENSE  = GNU GPL v2

GNU_CONFIGURE = 1
INSTALL_TARGET = myInstall

include ../../mk/spksrc.cross-cc.mk

.PHONY: myInstall
myInstall:
	@$(RUN) mkdir -p $(STAGING_INSTALL_PREFIX)/bin/
	@$(RUN) cp shellinaboxd $(STAGING_INSTALL_PREFIX)/bin/shellinaboxd

	#@$(RUN) mkdir -p $(WORK_DIR)/staging/shellinabox/bin
	#@$(RUN) cp $(SRC_DIR)shellinaboxd $(WORK_DIR)/staging/shellinabox/bin/

	#@$(RUN) mkdir -p $(WORK_DIR)/shellinabox/$(INSTALL_PREFIX)/bin
	#@$(RUN) cp $(SRC_DIR)shellinaboxd $(WORK_DIR)/shellinabox/$(INSTALL_PREFIX)/bin/

	#$(RUN) $(MAKE) install DESTDIR=$(INSTALL_DIR)
	#install -m 644 src/vimrc $(STAGING_INSTALL_PREFIX)/share/vim/vimrc
