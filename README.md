# TP 1 - Valentin Lachamp - Maîtrise de poste

## Self-footprinting

### Host OS

- Nom de la machine :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $hostname
    lopalam-kubuntu
    ```
    Nous pouvons donc voir que la machine se nomme `lopalam-kubuntu`.

- OS et Version :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $hostnamectl 
     Static hostname: lopalam-kubuntu
             Icon name: computer-laptop
               Chassis: laptop
            Machine ID: 7ea030a85e3649da9612b8ff64ad22bd
               Boot ID: efaeec3b62cb4a62afed565bd7ddfd5d
      Operating System: Ubuntu 18.04.4 LTS
                Kernel: Linux 5.3.0-46-generic
          Architecture: x86-64
    ```
    Nous pouvons voir ici que l'OS est `Ubuntu 18.04.4 LTS` et la version du kernel est `Linux 5.3.0-46-generic`.

- Architecture processeur :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $lscpu
    Architecture :                          x86_64
    Mode(s) opératoire(s) des processeurs : 32-bit, 64-bit
    Boutisme :                              Little Endian
    Processeur(s) :                         12
    Liste de processeur(s) en ligne :       0-11
    Thread(s) par cœur :                    2
    Cœur(s) par socket :                    6
    Socket(s) :                             1
    Nœud(s) NUMA :                          1
    Identifiant constructeur :              GenuineIntel
    Famille de processeur :                 6
    Modèle :                                158
    Nom de modèle :                         Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
    [...]
    ```
    L'Architechture du processeur est `x86_64` soit `64_bits`.

- Modèle du processeur :
    
    Enutilisant la même commande que pour la donnée précédante, nous trouvons `Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`.

- Quantité et modèle de RAM :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $sudo lshw -short
    H/W path        Device      Class          Description
    ======================================================
                                system         GL63 9SE (16P7.1)
    /0                          bus            MS-16P7
    /0/1                        memory         64KiB BIOS
    /0/3a                       memory         16GiB System Memory
    /0/3a/0                     memory         8GiB SODIMM DDR4 Synchronous 2667 MHz (0,4 ns)
    /0/3a/1                     memory         8GiB SODIMM DDR4 Synchronous 2667 MHz (0,4 ns)
    /0/44                       memory         384KiB L1 cache
    /0/45                       memory         1536KiB L2 cache
    /0/46                       memory         12MiB L3 cache
    /0/47                       processor      Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
    /0/100                      bridge         8th Gen Core Processor Host Bridge/DRAM Registers
    /0/100/1                    bridge         Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (x16)
    /0/100/1/0                  display        NVIDIA Corporation
    /0/100/1/0.1                multimedia     NVIDIA Corporation
    /0/100/1/0.2                bus            NVIDIA Corporation
    /0/100/1/0.2/0  usb3        bus            xHCI Host Controller
    /0/100/1/0.2/1  usb4        bus            xHCI Host Controller
    /0/100/1/0.3                bus            NVIDIA Corporation
    /0/100/2                    display        Intel Corporation
    [...]
    ```

    Nous pouvons voir ici qu'il y a `16GiB` de RAM et qu'il y a deux `8GiB SODIMM DDR4 Synchronous 2667 MHz (0,4 ns)`.

### Devices

- Marque et modèle du processeur :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $lscpu
    Architecture :                          x86_64
    Mode(s) opératoire(s) des processeurs : 32-bit, 64-bit
    Boutisme :                              Little Endian
    Processeur(s) :                         12
    Liste de processeur(s) en ligne :       0-11
    Thread(s) par cœur :                    2
    Cœur(s) par socket :                    6
    Socket(s) :                             1
    Nœud(s) NUMA :                          1
    Identifiant constructeur :              GenuineIntel
    Famille de processeur :                 6
    Modèle :                                158
    Nom de modèle :                         Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
    Révision :                              10
    Vitesse du processeur en MHz :          800.157
    Vitesse maximale du processeur en MHz : 4500,0000
    Vitesse minimale du processeur en MHz : 800,0000
    BogoMIPS :                              5199.98
    Virtualisation :                        VT-x
    Cache L1d :                             32K
    Cache L1i :                             32K
    Cache L2 :                              256K
    Cache L3 :                              12288K
    Nœud NUMA 0 de processeur(s) :          0-11
    [...]
    ```
    Le processeur est de marque `Intel` et de modèle `Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`, il y a `12` processeurs et `6` coeurs par sockets.
    Il a une `fréquence de 2.6 GHz`.
    
    Le code `9750` signifie qu'il appartient a la neuvième géneration et le `h` signifie Graphiques hautes performances.

- Marque et modèle du touchpad :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $cat /proc/bus/input/devices 
    [...]
    I: Bus=0011 Vendor=0002 Product=0007 Version=01b1
    N: Name="SynPS/2 Synaptics TouchPad"
    P: Phys=isa0060/serio1/input0
    S: Sysfs=/devices/platform/i8042/serio1/input/input6
    U: Uniq=
    H: Handlers=mouse0 event7 
    B: PROP=1
    B: EV=b
    B: KEY=e520 30000 0 0 0 0
    B: ABS=660800011000003
    [...]
    ```

    La marque de mon touch pad est `Synaptics` et le modèle est `SynPS/2`.

- Marque et modèle des enceintes :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $lspci
    [...]
    00:1f.3 Audio device: Intel Corporation Cannon Lake PCH cAVS (rev 10)
    [...]
    ```
    Les enceintes intégrées sont des `Intel` et le modèle est `Cannon Lake PCH cAVS`.

- Marques et modèle du disque pricipal :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $sudo lshw -class disk
    *-disk                    
        description: ATA Disk
        product: ST1000LM049-2GH1
        vendor: Seagate
        physical id: 0.0.0
        bus info: scsi@5:0.0.0
        logical name: /dev/sda
        version: SDM1
        serial: WGS4ZQ60
        size: 931GiB (1TB)
        capabilities: gpt-1.00 partitioned partitioned:gpt
        configuration: ansiversion=5 guid=40d03ec7-1858-4c8d-b954-670b47c51005 logicalsectorsize=512 sectorsize=4096
    ```
    La marque est `Seagate` et le modèle est `ST1000LM049-2GH1`.

- Analyse des disques :

    - Identifier les différentes partions des disques :
        ```bash
        ┌─[lopalam@lopalam-kubuntu]─[~]
        └──╼ $lsblk
        NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
        sda           8:0    0 931,5G  0 disk 
        └─sda1        8:1    0 931,5G  0 part 
        nvme0n1     259:0    0 238,5G  0 disk 
        ├─nvme0n1p1 259:1    0   300M  0 part 
        ├─nvme0n1p2 259:2    0   128M  0 part 
        ├─nvme0n1p3 259:3    0 131,9G  0 part 
        ├─nvme0n1p4 259:4    0   900M  0 part 
        ├─nvme0n1p5 259:5    0  17,6G  0 part 
        └─nvme0n1p6 259:6    0  87,7G  0 part /
        ```

    - Déterminer le systeme de fichier de chaque partition :
        ```bash 
        ┌─[lopalam@lopalam-kubuntu]─[~]
        └──╼ $lsblk -f
        NAME        FSTYPE LABEL       UUID                                 MOUNTPOINT
        sda                                                                 
        └─sda1      ntfs   Nouveau nom 9698802B98800C45                     
        nvme0n1                                                             
        ├─nvme0n1p1 vfat   SYSTEM      4A05-6763                            
        ├─nvme0n1p2                                                         
        ├─nvme0n1p3 ntfs   Windows     28DE06CCDE0691EC                     
        ├─nvme0n1p4 ntfs   WinRE tools A094086094083B74                     
        ├─nvme0n1p5 ntfs   BIOS_RVY    843C0BA63C0B91FA                     
        └─nvme0n1p6 ext4               bd13d814-c401-4bcb-a74e-648a5735a33b /
        ```
        Le type de la partition linux est `ext4` mais les partitions windows sont sous `ntfs`.

    - Fonction de chaque partition :
        
        - La partition `sda1` est une partition de stockage.
        - La partition `nvme0n1p1` est celle du systeme.
        - La partition `nvme0n1p3` est celle de windows systeme.
        - La partition `nvme0n1p4` est le récuperation windows.
        - La partition `nvme0n1p5` est celle du BIOS.
        - La partition `nvme0n1p6` estcelle de mon linux.

### Network

- Liste des cartes réseaux :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $nmcli device status
    DEVICE      TYPE      STATE         CONNECTION 
    wlo1        wifi      connecté      XXXX-8a16  
    virbr0      bridge    connecté      virbr0                                                                                                  
    enp3s0      ethernet  indisponible  --         
    lo          loopback  non-géré      --         
    ```
    - La carte `wlo1` est la carte wi-fi.
    - La carte `virb0` est la nat de virtual box qui permet de donner internet au VMs.
    - La carte `enp0s3` est la carte de mon port ethernet.
    - La carte `lo` est la loopback elle permet à l'ordinateur de se joindre lui même.

- Liste de tout les ports TCP et UDP en utilisation.
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $sudo lsof -i
    COMMAND    PID            USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
    systemd      1            root   61u  IPv6  23505      0t0  TCP *:6600 (LISTEN)
    systemd-r  725 systemd-resolve   12u  IPv4  16926      0t0  UDP localhost:domain 
    systemd-r  725 systemd-resolve   13u  IPv4  16927      0t0  TCP localhost:domain (LISTEN)
    cupsd      927            root    6u  IPv6  28337      0t0  TCP ip6-localhost:ipp (LISTEN)
    cupsd      927            root    7u  IPv4  28338      0t0  TCP localhost:ipp (LISTEN)
    avahi-dae  985           avahi   12u  IPv4   1656      0t0  UDP *:mdns 
    avahi-dae  985           avahi   13u  IPv6   1657      0t0  UDP *:mdns 
    avahi-dae  985           avahi   14u  IPv4   1658      0t0  UDP *:39924 
    avahi-dae  985           avahi   15u  IPv6   1659      0t0  UDP *:39548 
    cups-brow 1052            root    7u  IPv4  17798      0t0  UDP *:ipp 
    mpd       1104             mpd    4u  IPv6  23505      0t0  TCP *:6600 (LISTEN)
    dnsmasq   1364 libvirt-dnsmasq    3u  IPv4  35892      0t0  UDP *:bootps 
    dnsmasq   1364 libvirt-dnsmasq    5u  IPv4  35895      0t0  UDP lopalam-kubuntu:domain 
    dnsmasq   1364 libvirt-dnsmasq    6u  IPv4  35896      0t0  TCP lopalam-kubuntu:domain (LISTEN)
    dhclient  1466            root    6u  IPv4  30999      0t0  UDP *:bootpc 
    kdeconnec 1804         lopalam   13u  IPv6  37048      0t0  UDP *:1716 
    kdeconnec 1804         lopalam   14u  IPv6  37049      0t0  TCP *:1716 (LISTEN)
    ```

### Users

- Liste de tout les utilisateurs :
    ```bash
    ┌─[✗]─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $cut -d: -f1 /etc/passwd
    root
    daemon
    bin
    sys
    sync
    games
    man
    lp
    mail
    news
    uucp
    proxy
    www-data
    backup
    list
    irc
    gnats
    nobody
    systemd-network
    systemd-resolve
    syslog
    messagebus
    _apt
    uuidd
    avahi-autoipd
    usbmux
    dnsmasq
    rtkit
    cups-pk-helper
    whoopsie
    kernoops
    saned
    pulse
    avahi
    colord
    hplip
    mpd
    sddm
    geoclue
    lopalam
    mssql
    libvirt-qemu
    libvirt-dnsmasq
    mysql
    nvidia-persistenced
    ```

    Sur linux l'utilisateur qui a tout les droits est `root`.

### Processus

- Liste de tout les processus de la machine :
    ```bash
    ┌─[lopalam@lopalam-kubuntu]─[~]
    └──╼ $ps -aux
    USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
    root         1  0.2  0.0 225424  9096 ?        Ss   16:30   0:01 /sbin/init splash
    root         2  0.0  0.0      0     0 ?        S    16:30   0:00 [kthreadd]
    root         3  0.0  0.0      0     0 ?        I<   16:30   0:00 [rcu_gp]
    root         4  0.0  0.0      0     0 ?        I<   16:30   0:00 [rcu_par_gp]
    root         5  0.0  0.0      0     0 ?        I    16:30   0:00 [kworker/0:0-eve]
    root         6  0.0  0.0      0     0 ?        I<   16:30   0:00 [kworker/0:0H-kb]
    root         7  0.0  0.0      0     0 ?        I    16:30   0:00 [kworker/0:1-eve]
    root         9  0.0  0.0      0     0 ?        I<   16:30   0:00 [mm_percpu_wq]
    root        10  0.0  0.0      0     0 ?        S    16:30   0:00 [ksoftirqd/0]
    root        11  0.0  0.0      0     0 ?        I    16:30   0:00 [rcu_sched]
    root        12  0.0  0.0      0     0 ?        S    16:30   0:00 [migration/0]
    root        13  0.0  0.0      0     0 ?        S    16:30   0:00 [idle_inject/0]
    root        14  0.0  0.0      0     0 ?        S    16:30   0:00 [cpuhp/0]
    root        15  0.0  0.0      0     0 ?        S    16:30   0:00 [cpuhp/1]
    root        16  0.0  0.0      0     0 ?        S    16:30   0:00 [idle_inject/1]
    root        17  0.0  0.0      0     0 ?        S    16:30   0:00 [migration/1]
    root        18  0.0  0.0      0     0 ?        S    16:30   0:00 [ksoftirqd/1]
    root        20  0.0  0.0      0     0 ?        I<   16:30   0:00 [kworker/1:0H-kb]
    root        21  0.0  0.0      0     0 ?        S    16:30   0:00 [cpuhp/2]
    root        22  0.0  0.0      0     0 ?        S    16:30   0:00 [idle_inject/2]
    root        23  0.0  0.0      0     0 ?        S    16:30   0:00 [migration/2]
    root        24  0.0  0.0      0     0 ?        S    16:30   0:00 [ksoftirqd/2]
    root        25  0.0  0.0      0     0 ?        I    16:30   0:00 [kworker/2:0-eve]
    root        26  0.0  0.0      0     0 ?        I<   16:30   0:00 [kworker/2:0H-kb]
    root        27  0.0  0.0      0     0 ?        S    16:30   0:00 [cpuhp/3]
    root        28  0.0  0.0      0     0 ?        S    16:30   0:00 [idle_inject/3]
    root        29  0.0  0.0      0     0 ?        S    16:30   0:00 [migration/3]
    root        30  0.0  0.0      0     0 ?        S    16:30   0:00 [ksoftirqd/3]
    root        31  0.0  0.0      0     0 ?        I    16:30   0:00 [kworker/3:0-eve]
    root        32  0.0  0.0      0     0 ?        I<   16:30   0:00 [kworker/3:0H-ev]
    root        33  0.0  0.0      0     0 ?        S    16:30   0:00 [cpuhp/4]
    root        34  0.0  0.0      0     0 ?        S    16:30   0:00 [idle_inject/4]
    root        35  0.0  0.0      0     0 ?        S    16:30   0:00 [migration/4]
    ```

    - Le `/sbin/init splash` sert au demarrage de l'espace utilisateur.
    - Le `[kthreadd]` permet le lancement du kernel.
    - Le `Kworker` permet le fonctionnement du kernel.
    - Le `[migration/3]` permet le transfert de precessus du processeur vers un autre ici la carte graphique.
    - Le `[idle_inject/4]` permet de gérer la temperature du processeur.

    Le full admin etant le `root`, les processus lancés en `root` sont les systemes.

### Scripting

Mon Os étant un Ubuntu/Linux le script sera donc en `bash`.

Le script affichant les infos sur l'os est [ici](https://github.com/lopalam/TP---Mastering-Host/blob/master/infos_os.sh).

Le script qui permet d'éteindre ou de lock son ordinateur est [ici](https://github.com/lopalam/TP---Mastering-Host/blob/master/script2.sh).

### Gestion de softs

