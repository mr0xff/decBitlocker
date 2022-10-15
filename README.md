# decBitlocker
Programa para descriptografar uma partição ou disco com o bitlocker

Program to decrypt a partition or disk with bitlocker

# Requisitos / Requirements
dislocker

Pacote: dislocker Versão: 0.7.1-5 Prioridade: opcional Seção: universe/utils Origem: Ubuntu Mantenedor: Ubuntu Developers ubuntu-devel-discuss@lists.ubuntu.com Original-Mantainer: Debian Security Tools team+pkg-security@tracker .debian.org Bugs: https://bugs.launchpad.net/ubuntu/+filebug Installed-Size: 93,2 kB Depende: libc6 (>= 2.14), libdislocker0.7 (>= 0.7.1), libfuse2 ( >= 2.6), ruby ​​Página inicial: https://github.com/Aorimn/dislocker Tamanho do download: 20,1 kB APT-Manual-Instalado: sim APT-Fontes: http://us.archive.ubuntu.com/ ubuntu focal /universe amd64 Descrição dos pacotes: leitura/gravação de volumes BitLocker criptografados O Dislocker foi projetado para ler partições criptografadas do BitLocker em um sistema Linux. O driver usado para ler volumes criptografados nas versões do sistema Windows das partições criptografadas do Vista para 10 e BitLocker-To-Go, que são partições USB/FAT32. . O software funciona com driver composto por uma biblioteca, com múltiplos binários utilizando esta biblioteca. Descriptografando a partição, você deve fornecer um ponto de montagem onde, uma vez que as chaves são descriptografadas, um arquivo chamado disker-file aparece. Esse arquivo é uma partição NTFS virtual, portanto, você pode montá-lo como qualquer partição NTFS e ler ou gravar nele. A gravação no arquivo virtual NTFS alterará o conteúdo da partição BitLocker subjacente. . Esta ferramenta é útil no gerenciamento de criptografia e investigações forenses.

_________________________

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
$ git clone https://github.com/mr0xff/decBitlocker.git

$ cd decBitlocker

$ chmod +x decBitlocker.sh

$ sudo ./decBitokcer.sh


# seja feliz :) !
