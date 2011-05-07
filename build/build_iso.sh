#!/bin/bash

# first clean up
rm -f frost.iso

# then prepare the directories
mkdir iso_tmp
mkdir iso_tmp/grub
mkdir iso_tmp/system

# now build the kernel
cd ..
make clean
make
cd build

# now copy the kernel
cp ../frost.krn iso_tmp/system/

# now prepare grub 2
cd iso_tmp
cd grub

grub-mkimage -p /grub -o core.img -O i386-pc biosdisk iso9660 multiboot configfile
cat /usr/lib/grub/i386-pc/cdboot.img core.img >boot.img
rm core.img

cd ..
cd ..

# now copy over grub.cfg
cp grub.cfg iso_tmp/grub/

# and now finally build the iso
mkisofs -R -b grub/boot.img -no-emul-boot -boot-load-size 4 -boot-info-table -o frost.iso iso_tmp

# clean up
rm -f -r iso_tmp

# finished!