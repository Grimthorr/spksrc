#!/bin/sh

# Package
PACKAGE="shellinabox"
DNAME="Shellinabox"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"

start ()
{
    # Copy certificate
    cat /usr/syno/etc/ssl/ssl.crt/server.crt /usr/syno/etc/ssl/ssl.key/server.key /usr/syno/etc/ssl/ssl.intercrt/server-ca.crt > ${INSTALL_DIR}/bin/certificate.pem
    chown root:nobody ${INSTALL_DIR}/bin/certificate.pem
    chmod 640 ${INSTALL_DIR}/bin/certificate.pem

    ${INSTALL_DIR}/bin/shellinaboxd -s /:LOGIN --css=${INSTALL_DIR}/share/doc/white-on-black.css --cert=${INSTALL_DIR}/bin/ &
}

stop ()
{
    killall shellinaboxd
}


case $1 in
    start)
        echo Starting ${DNAME}...
        start
        ;;
    stop)
        echo Stopping ${DNAME}...
        stop
        ;;
    status)
        exit 0
        ;;
    log)
        exit 0
        ;;
    *)
        exit 1
        ;;
esac
