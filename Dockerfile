FROM ubuntu:14.04.3

MAINTAINER Olivier KALOUDOFF <olivier.kaloudoff@gmail.com>

ENV TERM xterm
ENV TIMEZONE "Europe/Paris"

# Enable Ubuntu Multiverse.
#RUN sed -i 's/^#\s*\(deb.*multiverse\)$/\1/g' /etc/apt/sources.list

# Update repos
#RUN apt-get update

## Install HTTPS support for APT
RUN apt-get install -yq --no-install-recommends apt-transport-https ca-certificates

## Install add-apt-repository
RUN apt-get install -yq --no-install-recommends software-properties-common

# Upgrade all packages
RUN apt-get dist-upgrade -y --no-install-recommends

# Fix locale
RUN apt-get install -yq --no-install-recommends language-pack-en \
    && locale-gen en_US \
    && update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8 \
    && echo 'LANG="en_US.UTF-8"' > /etc/default/locale

# Packages required for Briker solution
RUN apt-get install -yq --no-install-recommends \
    accountsservice \
    apt-transport-https \
    autoconf \
    automake \
    autotools-dev \
    bash-completion \
    bcrelay \
    bind9-host \
    binutils \
    biosdevname \
    bison \
    ca-certificates \
    cpp-4.8 \
    cpp \
    curl \
    dbus \
    dnsutils \
    dosfstools \
    fail2ban \
    fakeroot \
    flex \
    fontconfig-config \
    fontconfig \
    fonts-dejavu-core \
    freetds-common \
    ftp \
    g++-4.8 \
    gcc-4.8-base \
    gcc-4.8 \
    ghostscript \
    gsfonts \
    hicolor-icon-theme \
    ifupdown \
    imagemagick-common \
    imagemagick \
    init-system-helpers \
    initramfs-tools-bin \
    initramfs-tools \
    inotify-tools \
    iotop \
    iproute2 \
    isc-dhcp-client \
    isc-dhcp-common \
    isc-dhcp-server \
    krb5-locales \
    lame \
    libaccountsservice0 \
    libaio1 \
    libalgorithm-diff-perl \
    libalgorithm-diff-xs-perl \
    libalgorithm-merge-perl \
    libapparmor-perl \
    libapparmor1 \
    libapr1 \
    libaprutil1 \
    libapt-inst1.5 \
    libapt-pkg4.12 \
    libarchive13 \
    libasan0 \
    libasn1-8-heimdal \
    libasound2-data \
    libasound2 \
    libatomic1 \
    libavahi-client3 \
    libavahi-common-data \
    libavahi-common3 \
    libbind9-90 \
    libbison-dev \
    libblas3 \
    libblkid1 \
    libc-client2007e \
    libc-dev-bin \
    libc6-dev \
    libcairo2 \
    libcfg6 \
    libck-connector0 \
    libcloog-isl4 \
    libcmap4 \
    libcorosync-common4 \
    libcpg4 \
    libcroco3 \
    libcups2 \
    libcupsfilters1 \
    libcupsimage2 \
    libcurl3-gnutls \
    libcurl3 \
    libdatrie1 \
    libdb5.3 \
    libdbd-mysql-perl \
    libdbi-perl \
    libdbus-1-3 \
    libdjvulibre-text \
    libdjvulibre21 \
    libdns100 \
    libdpkg-perl \
    libdrm2 \
    libelf1 \
    libfakeroot \
    libffi6 \
    libfftw3-double3 \
    libfile-copy-recursive-perl \
    libfile-fcntllock-perl \
    libfl-dev \
    libflac8 \
    libfontconfig1 \
    libfreetype6 \
    libgcc-4.8-dev \
    libgcrypt11 \
    libgdk-pixbuf2.0-0 \
    libgdk-pixbuf2.0-common \
    libgmp10 \
    libgnutls-openssl27 \
    libgnutls26 \
    libgnutlsxx27 \
    libgomp1 \
    libgraphite2-3 \
    libgs9-common \
    libgs9 \
    libgsm1 \
    libgssapi-krb5-2 \
    libgssapi3-heimdal \
    libgssrpc4 \
    libharfbuzz0b \
    libhcrypto4-heimdal \
    libheimbase1-heimdal \
    libheimntlm0-heimdal \
    libhtml-template-perl \
    libhx509-5-heimdal \
    libibverbs1 \
    libidn11 \
    libijs-0.35 \
    libiksemel3 \
    libilmbase6 \
    libinotifytools0 \
    libisc95 \
    libisccc90 \
    libisccfg90 \
    libisl10 \
    libitm1 \
    libjansson4 \
    libjasper1 \
    libjbig0 \
    libjbig2dec0 \
    libjpeg-turbo8 \
    libjpeg8 \
    libk5crypto3 \
    libkadm5clnt-mit9 \
    libkadm5srv-mit9 \
    libkdb5-7 \
    libklibc \
    libkmod2 \
    libkrb5-26-heimdal \
    libkrb5-3 \
    libkrb5support0 \
    liblcms2-2 \
    libldap-2.4-2 \
    liblinear-tools \
    liblinear1 \
    liblqr-1-0 \
    libltdl7 \
    liblua5.2-0 \
    liblwres90 \
    liblzo2-2 \
    libmagickcore5-extra \
    libmagickcore5 \
    libmagickwand5 \
    libmcrypt4 \
    libmount1 \
    libmp3lame0 \
    libmpc3 \
    libmpfr4 \
    libmyodbc \
    libmysqlclient18 \
    libnetpbm10 \
    libnettle4 \
    libnl-3-200 \
    libnl-genl-3-200 \
    libnspr4 \
    libnss3-nssdb \
    libnss3 \
    libnuma1 \
    libodbc1 \
    libogg0 \
    libopencore-amrnb0 \
    libopencore-amrwb0 \
    libopenexr6 \
    libopts25 \
    libpam-modules-bin \
    libpam-modules \
    libpam-runtime \
    libpam-systemd \
    libpam0g \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libpangoft2-1.0-0 \
    libpaper-utils \
    libpaper1 \
    libpcre3 \
    libpcrecpp0 \
    libperl5.18 \
    libpixman-1-0 \
    libpkcs11-helper1 \
    libplymouth2 \
    libpq5 \
    libpq5 \
    libprocps3 \
    libpython2.7-minimal \
    libpython2.7-stdlib \
    libpython2.7 \
    libpython3.4-minimal \
    libpython3.4-stdlib \
    libqb0 \
    libquadmath0 \
    libquorum5 \
    librdmacm1 \
    libroken18-heimdal \
    librsvg2-2 \
    librsvg2-common \
    librtmp0 \
    libsam4 \
    libsensors4 \
    libserf-1-1 \
    libsigsegv2 \
    libsndfile1 \
    libsnmp-base \
    libsnmp30 \
    libsox-fmt-alsa \
    libsox-fmt-base \
    libsox2 \
    libspandsp2 \
    libspeexdsp1 \
    libsqlite0 \
    libsqliteodbc \
    libssh2-1 \
    libssl-doc \
    libssl1.0.0 \
    libstdc++-4.8-dev \
    libstdc++6 \
    libsvn1 \
    libsystemd-daemon0 \
    libsystemd-login0 \
    libtasn1-6 \
    libterm-readkey-perl \
    libthai-data \
    libthai0 \
    libtiff5 \
    libtiffxx5 \
    libtonezone2.0 \
    libtool \
    libtotem-pg5 \
    libtsan0 \
    libudev1 \
    libuuid1 \
    libvorbis0a \
    libvorbisenc2 \
    libvorbisfile3 \
    libvotequorum6 \
    libwavpack1 \
    libwind0-heimdal \
    libwmf0.2-7 \
    libwrap0 \
    libxcb-render0 \
    libxcb-shm0 \
    libxml2 \
    libxrender1 \
    libxslt1.1 \
    linux-firmware \
    linux-libc-dev \
    logrotate \
    lsb-base \
    lshw \
    m4 \
    make \
    mlock \
    mailx \
    module-init-tools \
    multiarch-support \
    mysql-client-5.6 \
    mysql-client-core-5.6 \
    mysql-common-5.6 \
    mysql-common \
    mysql-server-5.6 \
    mysql-server-core-5.6 \
    ncurses-term \
    netpbm \
    nmap \
    ntp \
    ntpdate \
    odbc-postgresql \
    odbcinst1debian2 \
    odbcinst \
    openssh-client \
    openssh-server \
    openssh-sftp-server \
    openssl \
    openvpn \
    pkg-config \
    plymouth \
    poppler-data \
    postfix \
    pppoe \
    pptp-linux \
    pptpd \
    procmail \
    procps \
    python-pyinotify \
    python-requests \
    python-urllib3 \
    python2.7-minimal \
    python2.7 \
    python3-problem-report \
    python3.4-minimal \
    python3.4 \
    resolvconf \
    rsync \
    rsyslog \
    sensible-mda \
    sensible-utils \
    smartmontools \
    snmp \
    snmpd \
    sox \
    ssh-import-id \
    ssl-cert \
   subversion \
    sudo \
    systemd-services \
    tar \
    tcpd \
    tcpdump \
    tdsodbc \
    tftpd-hpa \
    tofrodos \
    tzdata \
    udev \
    unixodbc \
    unzip \
    usbutils \
    util-linux \
    uuid-runtime \
    vim-runtime \
    vim \
    vlan \
    wget \
    whois \
    xmlstarlet
    
# Enable ssh agent
RUN echo "\n# Enable ssh agent" >> ~/.bashrc \
&& echo 'if [ ! -S ~/.ssh/ssh_auth_sock ]; then' >> ~/.bashrc \
&& echo '  eval `ssh-agent`' >> ~/.bashrc \
&& echo '  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock' >> ~/.bashrc \
&& echo 'fi' >> ~/.bashrc \
&& echo 'export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock' >> ~/.bashrc \
&& echo 'ssh-add -l | grep "The agent has no identities" && ssh-add' >> ~/.bashrc

# Configure system timezone
RUN echo $TIMEZONE > /etc/timezone; dpkg-reconfigure tzdata

# Clean up the mess
RUN apt-get autoclean \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Injecting container bootstrap file
COPY bootstrap.sh /usr/local/bin/bootstrap
RUN chmod +x /usr/local/bin/bootstrap
# SSHd service in a container
RUN mkdir -p /var/run/sshd \
    && mkdir -p /root/.ssh

RUN echo 'root:password' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -i 's/UsePrivilegeSeparation yes/UsePrivilegeSeparation no/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

# Default entrypoint
ENTRYPOINT ["bootstrap"]

