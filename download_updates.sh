#!/usr/bin/env bash

# download the files

echo "Downloading the files..."
wget -nv -i pkglist

echo "Downloaded the files"

# download the signature files

echo "Downloading the signature files..."

wget -nv -i siglist
echo "Downloaded the signature files"

# create packages and packages_sig directories and move this downloaded files to them

mkdir -p packages
mkdir -p packages_sig
mv *.zst packages
mv *.zst.sig packages_sig

echo "Downloaded files are in packages and packages_sig directories"

# compress this two folders into a single tar file
echo "Compressing the files into a single tar file send.tar"
tar -czf send.tar packages packages_sig
echo "Compressed the files into a single tar file send.tar"

# this files are to be transferred to the computer which needs to be updated
echo "Files to be transferred to the computer which needs to be updated are in send.tar"
