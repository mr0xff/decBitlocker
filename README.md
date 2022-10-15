# decBitlocker
Programa para descriptografar uma partição ou disco com o bitlocker

Program to decrypt a partition or disk with bitlocker

# Requisitos / requirements
dislocker

Package: dislocker
Version: 0.7.1-5
Priority: optional
Section: universe/utils
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Debian Security Tools <team+pkg-security@tracker.debian.org>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 93,2 kB
Depends: libc6 (>= 2.14), libdislocker0.7 (>= 0.7.1), libfuse2 (>= 2.6), ruby
Homepage: https://github.com/Aorimn/dislocker
Download-Size: 20,1 kB
APT-Manual-Installed: yes
APT-Sources: http://us.archive.ubuntu.com/ubuntu focal/universe amd64 Packages
Description: read/write encrypted BitLocker volumes
 Dislocker has been designed to read BitLocker encrypted partitions under
 a Linux system. The driver used to read volumes encrypted in Windows system
 versions of the Vista to 10 and BitLocker-To-Go encrypted partitions,that's
 USB/FAT32 partitions.
 .
 The software works with driver composed of a library, with multiple binaries
 using this library. Decrypting the partition, you have to give it a mount
 point where, once keys are decrypted, a file named dislocker-file appears.
 This file is a virtual NTFS partition, so you can mount it as any NTFS
 partition and then read from or write to it. Writing to the NTFS virtual
 file will change the underlying BitLocker partition content.
 .
 This tool is useful in cryptography managing and forensics investigations.



# Instação / Instalation
git clone https://github.com/mr0xff/decBitlocker.git

cd decBitlocker

sudo ./decBitokcer.sh

seja feliz :) !
