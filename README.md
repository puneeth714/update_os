# Updated OS

## Helps to update the software of an offline system

### Here we are using the system which has internet connection to download the packages and trnsferring them to offline machine to install/update the package

- works in arch linux (Some tweaks can make it work in any linux systems)
- A list of links will be generated and stored in the pkglist file after running pre_run.sh
- Another siglist file is also generated which is helpful in verifing the integrety of the files
- Transfer this two files to another computer which has active internet connection
- Run the dowload_updates.sh in that computer
- After completion of the program send.tar file will be present in the current directory
- Transfer this file to offline system.
- Now run the install_updates.sh " Which will extract them ,move and install them into the filesystem "
- Happy Updating! : )
