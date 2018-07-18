# Anki

Anki using docker.

Run:

```terminal
docker run --rm \
  -e QT_SCALE_FACTOR \
  -e DISPLAY=unix:0 \
  -e GDK_DPI_SCALE \
  -e GDK_SCALE \
  -v /dev/shm:/dev/shm \
  -v /etc/localtime:/etc/localtime:ro \
  -v ${HOME}:/${USER} \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --device /dev/dri --device /dev/snd \
  -e DBUS_SESSION_BUS_ADDRESS \
  -e XAUTHORITY \
  --group-add 29 --group-add 44 \
  -v /etc/machine-id:/etc/machine-id:ro \
  -v ${HOME}/.Xauthority:/root/.Xauthority \
  -v /usr/share/dbus-1:/usr/share/dbus-1 \
  -v /var/run/dbus:/var/run/dbus \
  -v anki_root:/root dmitryrck/anki anki
```
