#! /bin/bash
#
# coded by Aysad Kozanoglu
# email : aysadx@gmail.com
# web: http://onweb.pe.hu
# HLSSERVER installer part x86_64 machine  script
#


log=/tmp/installer


    apt-get install -y --force-yes libxml2-dev  >> $log 2>&1
    apt-get install -y --force-yes libbz2-dev  >> $log 2>&1
    apt-get install -y --force-yes libcurl4-openssl-dev   >> $log 2>&1


    apt-get install -y --force-yes libmcrypt-dev  >> $log 2>&1
    apt-get install -y --force-yes libmhash2 >> $log 2>&1
    apt-get install -y --force-yes libmhash-dev  >> $log 2>&1
    apt-get install -y --force-yes libpcre3  >> $log 2>&1
    apt-get install -y --force-yes libpcre3-dev  >> $log 2>&1
    apt-get install -y --force-yes make  >> $log 2>&1
    apt-get install -y --force-yes build-essential  >> $log 2>&1

    apt-get install -y --force-yes libxslt1-dev git >> $log 2>&1
    apt-get install -y --force-yes libssl-dev >> $log 2>&1
    apt-get install -y --force-yes git >> $log 2>&1
    apt-get install -y --force-yes php5  >> $log 2>&1
    apt-get install -y --force-yes unzip >> $log 2>&1

    apt-get install -y --force-yes python-software-properties >> $log 2>&1
    apt-get install -y --force-yes libpopt0 >> $log 2>&1
    apt-get install -y --force-yes libpq-dev >> $log 2>&1
    apt-get install -y --force-yes libpq5 >> $log 2>&1
    apt-get install -y --force-yes libpspell-dev >> $log 2>&1
    apt-get install -y --force-yes libpthread-stubs0-dev >> $log 2>&1
    apt-get install -y --force-yes libpython-stdlib >> $log 2>&1
    apt-get install -y --force-yes libqdbm-dev >> $log 2>&1
    apt-get install -y --force-yes libqdbm14 >> $log 2>&1
    apt-get install -y --force-yes libquadmath0 >> $log 2>&1

    apt-get install -y --force-yes librecode-dev >> $log 2>&1
    apt-get install -y --force-yes librecode0 >> $log 2>&1
    apt-get install -y --force-yes librtmp-dev >> $log 2>&1
    apt-get install -y --force-yes librtmp0 >> $log 2>&1
    apt-get install -y --force-yes libsasl2-dev >> $log 2>&1
    apt-get install -y --force-yes libsasl2-modules >> $log 2>&1


    apt-get install -y --force-yes libsctp-dev >> $log 2>&1
    apt-get install -y --force-yes libsctp1 >> $log 2>&1
    apt-get install -y --force-yes libsensors4 >> $log 2>&1
    apt-get install -y --force-yes libsensors4-dev >> $log 2>&1
    apt-get install -y --force-yes libsm-dev >> $log 2>&1
    apt-get install -y --force-yes libsm6 >> $log 2>&1
    apt-get install -y --force-yes libsnmp-base >> $log 2>&1
    apt-get install -y --force-yes libsnmp-dev >> $log 2>&1
    apt-get install -y --force-yes libsnmp-perl >> $log 2>&1
    apt-get install -y --force-yes libsnmp30 >> $log 2>&1
    apt-get install -y --force-yes libsqlite3-dev >> $log 2>&1
    apt-get install -y --force-yes libssh2-1 >> $log 2>&1
    apt-get install -y --force-yes libssh2-1-dev >> $log 2>&1
    apt-get install -y --force-yes libssl-dev >> $log 2>&1
    apt-get install -y --force-yes libstdc++-4.8-dev >> $log 2>&1
    apt-get install -y --force-yes libstdc++6-4.7-dev >> $log 2>&1



    apt-get install -y --force-yes libsybdb5 >> $log 2>&1
    apt-get install -y --force-yes libtasn1-3-dev >> $log 2>&1
    apt-get install -y --force-yes libtasn1-6-dev >> $log 2>&1
    apt-get install -y --force-yes libterm-readkey-perl >> $log 2>&1
    apt-get install -y --force-yes libtidy-0.99-0 >> $log 2>&1
    apt-get install -y --force-yes libtidy-dev >> $log 2>&1
    apt-get install -y --force-yes libtiff5 >> $log 2>&1
    apt-get install -y --force-yes libtiff5-dev >> $log 2>&1
    apt-get install -y --force-yes libtiffxx5 >> $log 2>&1
    apt-get install -y --force-yes libtimedate-perl >> $log 2>&1
    apt-get install -y --force-yes libtinfo-dev >> $log 2>&1
    apt-get install -y --force-yes libtool >> $log 2>&1
    apt-get install -y --force-yes libtsan0 >> $log 2>&1


    apt-get install -y --force-yes libunistring0 >> $log 2>&1
    apt-get install -y --force-yes libvpx-dev >> $log 2>&1
    apt-get install -y --force-yes libvpx1 >> $log 2>&1
    apt-get install -y --force-yes libwrap0-dev >> $log 2>&1
    apt-get install -y --force-yes libx11-6 >> $log 2>&1
    apt-get install -y --force-yes libx11-data >> $log 2>&1
    apt-get install -y --force-yes libx11-dev >> $log 2>&1
    apt-get install -y --force-yes libxau-dev >> $log 2>&1
    apt-get install -y --force-yes libxau6 >> $log 2>&1
    apt-get install -y --force-yes libxcb1 >> $log 2>&1
    apt-get install -y --force-yes libxcb1-dev >> $log 2>&1
    apt-get install -y --force-yes libxdmcp-dev >> $log 2>&1
    apt-get install -y --force-yes libxdmcp6 >> $log 2>&1



    apt-get install -y --force-yes libxml2 >> $log 2>&1
    apt-get install -y --force-yes libxml2-dev >> $log 2>&1
    apt-get install -y --force-yes libxmltok1 >> $log 2>&1
    apt-get install -y --force-yes libxmltok1-dev >> $log 2>&1
    apt-get install -y --force-yes libxpm-dev >> $log 2>&1
    apt-get install -y --force-yes libxpm4 >> $log 2>&1
    apt-get install -y --force-yes libxslt1-dev >> $log 2>&1
    apt-get install -y --force-yes libxslt1.1 >> $log 2>&1
    apt-get install -y --force-yes libxt-dev >> $log 2>&1
    apt-get install -y --force-yes libxt6 >> $log 2>&1
    apt-get install -y --force-yes linux-libc-dev >> $log 2>&1
    apt-get install -y --force-yes m4 >> $log 2>&1
    apt-get install -y --force-yes make >> $log 2>&1
    apt-get install -y --force-yes man-db >> $log 2>&1
    apt-get install -y --force-yes netcat-openbsd >> $log 2>&1
    apt-get install -y --force-yes odbcinst1debian2 >> $log 2>&1


    apt-get install -y --force-yes openssl >> $log 2>&1
    apt-get install -y --force-yes patch >> $log 2>&1
    apt-get install -y --force-yes pkg-config >> $log 2>&1
    apt-get install -y --force-yes po-debconf >> $log 2>&1
    apt-get install -y --force-yes python >> $log 2>&1
    apt-get install -y --force-yes python-minimal >> $log 2>&1
    apt-get install -y --force-yes python2.7 >> $log 2>&1
    apt-get install -y --force-yes python2.7-minimal >> $log 2>&1
    apt-get install -y --force-yes re2c >> $log 2>&1
    apt-get install -y --force-yes unixodbc >> $log 2>&1
    apt-get install -y --force-yes unixodbc-dev >> $log 2>&1


    apt-get install -y --force-yes uuid-dev >> $log 2>&1
    apt-get install -y --force-yes x11-common >> $log 2>&1
    apt-get install -y --force-yes x11proto-core-dev >> $log 2>&1
    apt-get install -y --force-yes x11proto-input-dev >> $log 2>&1
    apt-get install -y --force-yes x11proto-kb-dev >> $log 2>&1
    apt-get install -y --force-yes xorg-sgml-doctools >> $log 2>&1
    apt-get install -y libjpeg8 >> $log 2>&1
    apt-get install -y --force-yes xtrans-dev >> $log 2>&1
    apt-get install -y --force-yes zlib1g-dev >> $log 2>&1
    apt-get install -y --force-yes php5-fpm  >> $log 2>&1


echo "fertig" >> $log 
echo "fertig" > /tmp/installStatus


