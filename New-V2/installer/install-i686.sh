#! /bin/bash
#
# coded by Aysad Kozanoglu
# email : aysadx@gmail.com
# web: http://onweb.pe.hu
# HLSSERVER installer part i686 machine  script
#



echo 8 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50


    apt-get install -y --force-yes libxml2-dev  > /dev/null 2>&1
    apt-get install -y --force-yes libbz2-dev  > /dev/null 2>&1
    apt-get install -y --force-yes libcurl4-openssl-dev   > /dev/null 2>&1
    apt-get install -y --force-yes libmcrypt-dev  > /dev/null 2>&1


    apt-get install -y --force-yes libmhash2 > /dev/null 2>&1
    apt-get install -y --force-yes libmhash-dev  > /dev/null 2>&1
    apt-get install -y --force-yes libpcre3  > /dev/null 2>&1
    apt-get install -y --force-yes libpcre3-dev  > /dev/null 2>&1
    apt-get install -y --force-yes make  > /dev/null 2>&1
    apt-get install -y --force-yes build-essential  > /dev/null 2>&1

echo 15 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50

    apt-get install -y --force-yes libxslt1-dev git > /dev/null 2>&1
    apt-get install -y --force-yes libssl-dev > /dev/null 2>&1
    apt-get install -y --force-yes git > /dev/null 2>&1
    apt-get install -y --force-yes php5  > /dev/null 2>&1
    apt-get install -y --force-yes unzip > /dev/null 2>&1
    apt-get install -y --force-yes python-software-properties > /dev/null 2>&1
    apt-get install -y --force-yes libpopt0 > /dev/null 2>&1
    apt-get install -y --force-yes libpq-dev > /dev/null 2>&1
    apt-get install -y --force-yes libpq5 > /dev/null 2>&1
    apt-get install -y --force-yes libpspell-dev > /dev/null 2>&1
    apt-get install -y --force-yes libpthread-stubs0-dev > /dev/null 2>&1
    apt-get install -y --force-yes libpython-stdlib > /dev/null 2>&1
    apt-get install -y --force-yes libqdbm-dev > /dev/null 2>&1
    apt-get install -y --force-yes libqdbm14 > /dev/null 2>&1

echo 25 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50

    apt-get install -y --force-yes libquadmath0 > /dev/null 2>&1
    apt-get install -y --force-yes librecode-dev > /dev/null 2>&1
    apt-get install -y --force-yes librecode0 > /dev/null 2>&1
    apt-get install -y --force-yes librtmp-dev > /dev/null 2>&1
    apt-get install -y --force-yes librtmp0 > /dev/null 2>&1
    apt-get install -y --force-yes libsasl2-dev > /dev/null 2>&1
    apt-get install -y --force-yes libsasl2-modules > /dev/null 2>&1
    apt-get install -y --force-yes libsctp-dev > /dev/null 2>&1
    apt-get install -y --force-yes libsctp1 > /dev/null 2>&1
    apt-get install -y --force-yes libsensors4 > /dev/null 2>&1
    apt-get install -y --force-yes libsensors4-dev > /dev/null 2>&1
    apt-get install -y --force-yes libsm-dev > /dev/null 2>&1
    apt-get install -y --force-yes libsm6 > /dev/null 2>&1
    apt-get install -y --force-yes libsnmp-base > /dev/null 2>&1

echo 34 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50

    apt-get install -y --force-yes libsnmp-dev > /dev/null 2>&1
    apt-get install -y --force-yes libsnmp-perl > /dev/null 2>&1
    apt-get install -y --force-yes libsnmp30 > /dev/null 2>&1
    apt-get install -y --force-yes libsqlite3-dev > /dev/null 2>&1
    apt-get install -y --force-yes libssh2-1 > /dev/null 2>&1
    apt-get install -y --force-yes libssh2-1-dev > /dev/null 2>&1
    apt-get install -y --force-yes libssl-dev > /dev/null 2>&1
    apt-get install -y --force-yes libstdc++-4.8-dev > /dev/null 2>&1
    apt-get install -y --force-yes libstdc++6-4.7-dev > /dev/null 2>&1
    apt-get install -y --force-yes libsybdb5 > /dev/null 2>&1
    apt-get install -y --force-yes libtasn1-3-dev > /dev/null 2>&1
    apt-get install -y --force-yes libtasn1-6-dev > /dev/null 2>&1
    apt-get install -y --force-yes libterm-readkey-perl > /dev/null 2>&1
    apt-get install -y --force-yes libtidy-0.99-0 > /dev/null 2>&1

echo 45 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50


    apt-get install -y --force-yes libtidy-dev > /dev/null 2>&1
    apt-get install -y --force-yes libtiff5 > /dev/null 2>&1
    apt-get install -y --force-yes libtiff5-dev > /dev/null 2>&1
    apt-get install -y --force-yes libtiffxx5 > /dev/null 2>&1
    apt-get install -y --force-yes libtimedate-perl > /dev/null 2>&1
    apt-get install -y --force-yes libtinfo-dev > /dev/null 2>&1
    apt-get install -y --force-yes libtool > /dev/null 2>&1
    apt-get install -y --force-yes libtsan0 > /dev/null 2>&1
    apt-get install -y --force-yes libunistring0 > /dev/null 2>&1
    apt-get install -y --force-yes libvpx-dev > /dev/null 2>&1
    apt-get install -y --force-yes libvpx1 > /dev/null 2>&1
    apt-get install -y --force-yes libwrap0-dev > /dev/null 2>&1
    apt-get install -y --force-yes libx11-6 > /dev/null 2>&1
    apt-get install -y --force-yes libx11-data > /dev/null 2>&1

echo 55 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50


    apt-get install -y --force-yes libx11-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxau-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxau6 > /dev/null 2>&1
    apt-get install -y --force-yes libxcb1 > /dev/null 2>&1
    apt-get install -y --force-yes libxcb1-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxdmcp-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxdmcp6 > /dev/null 2>&1
    apt-get install -y --force-yes libxml2 > /dev/null 2>&1
    apt-get install -y --force-yes libxml2-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxmltok1 > /dev/null 2>&1
    apt-get install -y --force-yes libxmltok1-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxpm-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxpm4 > /dev/null 2>&1
    apt-get install -y --force-yes libxslt1-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxslt1.1 > /dev/null 2>&1
    apt-get install -y --force-yes libxt-dev > /dev/null 2>&1
    apt-get install -y --force-yes libxt6 > /dev/null 2>&1

echo 67 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50


    apt-get install -y --force-yes linux-libc-dev > /dev/null 2>&1
    apt-get install -y --force-yes m4 > /dev/null 2>&1
    apt-get install -y --force-yes make > /dev/null 2>&1
    apt-get install -y --force-yes man-db > /dev/null 2>&1
    apt-get install -y --force-yes netcat-openbsd > /dev/null 2>&1
    apt-get install -y --force-yes odbcinst1debian2 > /dev/null 2>&1
    apt-get install -y --force-yes openssl > /dev/null 2>&1
    apt-get install -y --force-yes patch > /dev/null 2>&1
    apt-get install -y --force-yes pkg-config > /dev/null 2>&1
    apt-get install -y --force-yes po-debconf > /dev/null 2>&1
    apt-get install -y --force-yes python > /dev/null 2>&1
    apt-get install -y --force-yes python-minimal > /dev/null 2>&1
    apt-get install -y --force-yes python2.7 > /dev/null 2>&1
    apt-get install -y --force-yes python2.7-minimal > /dev/null 2>&1
    apt-get install -y --force-yes re2c > /dev/null 2>&1

echo 74 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50


    apt-get install -y --force-yes unixodbc > /dev/null 2>&1
    apt-get install -y --force-yes unixodbc-dev > /dev/null 2>&1
    apt-get install -y --force-yes uuid-dev > /dev/null 2>&1
    apt-get install -y --force-yes x11-common > /dev/null 2>&1
    apt-get install -y --force-yes x11proto-core-dev > /dev/null 2>&1
    apt-get install -y --force-yes x11proto-input-dev > /dev/null 2>&1

echo 76 | dialog --title "HLSSERVER PANEL installer" --gauge "installing needed packages - please wait..." 8 50


    apt-get install -y --force-yes x11proto-kb-dev > /dev/null 2>&1
    apt-get install -y --force-yes xorg-sgml-doctools > /dev/null 2>&1
    apt-get install -y libjpeg8 > /dev/null 2>&1
    apt-get install -y --force-yes xtrans-dev > /dev/null 2>&1
    apt-get install -y --force-yes zlib1g-dev > /dev/null 2>&1
    apt-get install -y --force-yes php5-fpm  > /dev/null 2>&1

echo 77 | dialog --title "HLSSERVER PANEL installer" --gauge "package installation done - next step..." 8 50

sleep 2;
