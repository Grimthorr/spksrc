#!/bin/sh

# Package
PACKAGE="shellinabox"
DNAME="Shellinabox"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
LOG_FILE="${INSTALL_DIR}/bin/shellinaboxd.log"

start ()
{
	echo Starting ${DNAME}...

	# Copy certificate
	cat /usr/syno/etc/ssl/ssl.crt/server.crt /usr/syno/etc/ssl/ssl.key/server.key /usr/syno/etc/ssl/ssl.intercrt/server-ca.crt > ${INSTALL_DIR}/bin/certificate.pem
	chown root:nobody ${INSTALL_DIR}/bin/certificate.pem
	chmod 640 ${INSTALL_DIR}/bin/certificate.pem

	# Start shellinabox
	${INSTALL_DIR}/bin/shellinaboxd -s /:LOGIN --user-css="Black on White:-${INSTALL_DIR}/share/doc/black-on-white.css,White On Black:+${INSTALL_DIR}/share/doc/white-on-black.css;Color:+${INSTALL_DIR}/share/doc/color.css,Monochrome:-${INSTALL_DIR}/share/doc/monochrome.css" --cert=${INSTALL_DIR}/bin/ --disable-ssl-menu -v 2>&1 | tee ${LOG_FILE} &
}

stop ()
{
	echo Stopping ${DNAME}...

	killall shellinaboxd 2>/dev/null
}

status ()
{
	PID=`ps | grep shellinaboxd | grep -v grep |awk '{print $1}'`
	if [ "$PID" != "" ]; then
		return 0
	else
		return 1
	fi
}


case $1 in
	start)
		if status; then
			echo ${DNAME} is already running.
		else
			start
		fi
		;;
	stop)
		if status; then
			stop
		else
			echo ${DNAME} is not running.
		fi
		exit 0
		;;
	restart)
		stop
		start
		;;
	status)
		if status; then
			echo ${DNAME} is running.
			exit 0
		else
			echo ${DNAME} is not running.
			exit 1
		fi
		;;
	log)
		echo "${LOG_FILE}"
		exit 0
		;;
	*)
		exit 1
		;;
esac
