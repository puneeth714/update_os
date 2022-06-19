#!/usr/bin/env bash

# check if send.tar is present in current directory
if [ ! -f send.tar ]; then
    echo "send.tar is not present in current directory"
    exit 1
fi
# extract the send.tar file
echo "Extracting the send.tar file"
tar -xzf send.tar
echo "Extracted the send.tar file"

# rm the send.tar file
echo "Removing the send.tar file"
rm send.tar
echo "Removed the send.tar file"

# move all the files inside the packages and packages_sig directories to the /var/cache/pacman/pkg/ directory
echo "Moving the files inside the packages and packages_sig directories to the /var/cache/pacman/pkg/ directory"
mv packages/* /var/cache/pacman/pkg/
mv packages_sig/* /var/cache/pacman/pkg/
echo "Moved the files inside the packages and packages_sig directories to the /var/cache/pacman/pkg/ directory"

# update the packages
echo "Updating the packages"
echo "Need root access"
sudo pacman -Su
echo "Updated the packages"
