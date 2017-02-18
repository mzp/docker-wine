#!/bin/sh
Xvfb $DISPLAY -screen 0 1024x768x24 &
x11vnc -display $DISPLAY -bg -nopw -listen 0.0.0.0 -xkb

if [ "x$1" = 'xinit' ]; then
  echo "Use Windows 8"
  winecfg
  wine KindleForPC-installer-1.17.44183.exe
else
  wine ".wine/drive_c/Program Files (x86)/Amazon/Kindle/Kindle.exe"
fi
