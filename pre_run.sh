#!/usr/bin/env bash

#update the package database

echo "Required root premissions"
sudo pacman -Sy

echo "Get all updates to pkglist file"
pacman -Sup --noconfirm > pkglist

echo "Get the signature files to siglist file"
sed -e 's/\.zst$/.zst.sig/' pkglist > siglist

echo "Done"