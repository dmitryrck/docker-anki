from ubuntu

env DEBIAN_FRONTEND=noninteractive \
  LANG=en_US.UTF-8 \
  ANKI_VERSION=2.0.52

add https://apps.ankiweb.net/downloads/current/anki-$ANKI_VERSION-amd64.tar.bz2 /

run sed -i "/deb-src/d" /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y make xdg-utils python3-pyqt4 python-qt4 mplayer locales materia-gtk-theme papirus-icon-theme dmz-cursor-theme && \
  tar xfj /anki-$ANKI_VERSION-amd64.tar.bz2 && cd /anki-$ANKI_VERSION && make install && \
  sed -i -e "s/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/" /etc/locale.gen && \
  dpkg-reconfigure --frontend=noninteractive locales && \
  update-locale && \
  rm /etc/alternatives/x-cursor-theme && \
  ln -s /usr/share/icons/DMZ-Black/cursor.theme /etc/alternatives/x-cursor-theme && \
  rm /anki-$ANKI_VERSION-amd64.tar.bz2 && \
  rm -rf /var/lib/apt/lists/*

copy theme.sh /usr/local/bin/theme.sh
