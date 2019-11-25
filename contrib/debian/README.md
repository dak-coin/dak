
Debian
====================
This directory contains files used to package dakd/dak-qt
for Debian-based Linux systems. If you compile dakd/dak-qt yourself, there are some useful files here.

## dak: URI support ##


dak-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install dak-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your dak-qt binary to `/usr/bin`
and the `../../share/pixmaps/dak128.png` to `/usr/share/pixmaps`

dak-qt.protocol (KDE)

