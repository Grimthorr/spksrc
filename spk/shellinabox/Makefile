SPK_NAME = shellinabox
SPK_VERS = 3.1
SPK_REV = 25
SPK_ICON = src/shellinabox.png
DSM_UI_DIR = app

DEPENDS = cross/$(SPK_NAME)

MAINTAINER = Grimthorr
DESCRIPTION = Shell In A Box implements a web server that can export arbitrary command line tools to a web based terminal emulator. This emulator is accessible to any JavaScript and CSS enabled web browser and does not require any additional browser plugins.
ADMIN_PROTOCOL = https
ADMIN_PORT = 4200
RELOAD_UI = yes
DISPLAY_NAME = Shellinabox
CHANGELOG = "Initial release."

HOMEPAGE = http://www.transmissionbt.com
LICENSE  = GPLv2/GPLv3

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh
FWPORTS          = src/${SPK_NAME}.sc

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

POST_STRIP_TARGET = shellinabox_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: shellinabox_extra_install
shellinabox_extra_install:
	install -m 755 -d $(STAGING_DIR)/app
	install -m 644 src/app/config $(STAGING_DIR)/app/config
	for size in 16 24 32 48 72; do \
		convert $(SPK_ICON) -thumbnail $${size}x$${size} \
		        $(STAGING_DIR)/app/$(SPK_NAME)-$${size}.png ; \
	done
	install -m 755 -d $(STAGING_DIR)/share/doc
	install -m 644 src/doc/* $(STAGING_DIR)/share/doc/
	install -m 644 $(STAGING_INSTALL_PREFIX)/share/doc/shellinabox/* $(STAGING_DIR)/share/doc/
	install -m 755 -d $(STAGING_DIR)/bin
	install -m 755 $(STAGING_INSTALL_PREFIX)/bin/shellinaboxd $(STAGING_DIR)/bin/shellinaboxd
	rm -fr $(STAGING_DIR)/lib/
	rm -f $(STAGING_DIR)/openssl.cnf
	rm -f $(STAGING_DIR)/bin/openssl
	rm -f $(STAGING_DIR)/bin/c_rehash
