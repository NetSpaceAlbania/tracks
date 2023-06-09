The Filesystem Hierarchy Standard (FHS) is a set of guidelines that define the structure and organization of files and directories in Unix-like operating systems. The FHS aims to provide consistency and interoperability between different Unix-like systems.

Here is an overview of the main directories in the FHS:

```
/
├── bin
│   ├── ls
│   ├── cp
│   └── ...
├── boot
│   ├── grub
│   └── ...
├── dev
│   ├── sda
│   ├── tty
│   └── ...
├── etc
│   ├── passwd
│   ├── group
│   └── ...
├── home
│   ├── user1
│   ├── user2
│   └── ...
├── lib
│   ├── libc.so
│   ├── libpthread.so
│   └── ...
├── media
│   ├── cdrom
│   └── ...
├── mnt
│   ├── usb
│   └── ...
├── opt
│   ├── google
│   └── ...
├── proc
│   ├── cpuinfo
│   ├── meminfo
│   └── ...
├── root
│   ├── file1
│   ├── file2
│   └── ...
├── run
│   ├── lock
│   ├── user
│   └── ...
├── sbin
│   ├── init
│   ├── poweroff
│   └── ...
├── srv
│   ├── http
│   ├── ftp
│   └── ...
├── sys
│   ├── devices
│   ├── kernel
│   └── ...
├── tmp
│   ├── file1
│   ├── file2
│   └── ...
├── usr
│   ├── bin
│   ├── lib
│   ├── local
│   └── ...
└── var
    ├── log
    ├── run
    ├── spool
    └── ...
```
Filesystem Hierarchy Standard (FHS):

- `/bin`: This directory contains essential binaries that are necessary for the system to boot and run. These binaries are generally considered to be part of the "core" system and are included in the system's base install. Some examples of binaries that you might find in this directory include `ls`, `cp`, `mkdir`, and `cat`.

- `/boot`: This directory contains files needed for the boot process, including the bootloader, kernel, and initial RAM disk (initrd) files. The bootloader is responsible for loading the kernel into memory and starting the boot process. The kernel is the core of the operating system and provides low-level services such as memory management, process scheduling, and device drivers.

- `/dev`: This directory contains device files that represent hardware devices, such as hard drives and input/output devices. These device files are used by the system to communicate with the hardware devices. For example, the device file `/dev/sda` represents the first hard drive in the system.

- `/etc`: This directory contains configuration files for the system and applications. These configuration files are generally text files that are edited by system administrators to customize the system's behavior. Some examples of files that you might find in this directory include `/etc/passwd`, which contains user account information, and `/etc/fstab`, which contains filesystem mount information.

- `/home`: This directory contains the home directories for all non-system users. Each user has their own subdirectory within this directory, which is typically named after their username. This directory is where users can store their personal files and settings.

- `/lib`: This directory contains libraries that are needed by the binaries in `/bin` and `/sbin`. These libraries provide common functionality that is used by multiple binaries. For example, the `libc` library provides basic C language functionality that is used by many system utilities.

- `/media`: This directory contains mount points for removable media, such as CD-ROMs and USB drives. When a removable media device is plugged in, the system creates a directory within this directory with a name based on the device's label or serial number.

- `/mnt`: This directory is a mount point for temporary filesystems, such as network shares or temporary storage devices. This directory is typically empty, but can be used by system administrators to mount temporary filesystems.

- `/opt`: This directory contains optional software packages that are not included in the base system. This directory is often used by third-party software vendors to install their applications.

- `/proc`: This directory is a virtual filesystem that provides information about running processes and system status. The files in this directory are not real files, but rather are dynamically generated by the kernel when they are accessed. For example, the file `/proc/cpuinfo` contains information about the system's CPU.

- `/root`: This directory is the home directory for the root user. Like the home directories in `/home`, this directory is where the root user can store their personal files and settings.

- `/run`: This directory contains files that are created and used during the boot process and by system daemons. These files are typically deleted when the system is rebooted.

- `/sbin`: This directory contains essential system binaries that are used for system administration tasks. These binaries are generally considered to be more low-level than the binaries in `/bin`. Some examples of binaries that you might find in this directory include `init`, which is responsible for starting and stopping system services, and `poweroff`, which is used to shut down the system.

- `/srv`: This directory contains data for services provided by the system, such as HTTP and FTP servers. Each service typically has its own subdirectory within this directory.

- `/srv`: This directory contains data for services provided by the system, such as HTTP and FTP servers. Each service typically has its own subdirectory within this directory.

- `/sys`: This directory is a virtual filesystem that provides information about the system's hardware devices and drivers. Like `/proc`, the files in this directory are not real files, but are dynamically generated by the kernel when they are accessed.

- `/tmp`: This directory contains temporary files that are created by system and user processes. These files are typically deleted when the system is rebooted.

- `/usr`: This directory contains user binaries, libraries, and documentation. This directory is typically read-only, meaning that the system administrator cannot modify its contents. Some examples of binaries that you might find in this directory include `gcc`, which is used to compile C programs, and `firefox`, which is a popular web browser.

- `/var`: This directory contains variable data files, such as log files and spool directories. These files are expected to change in size and content over time, so they are typically stored on a separate filesystem to prevent them from filling up the root filesystem. Some examples of files that you might find in this directory include `/var/log/messages`, which contains system log messages, and `/var/spool/mail`, which contains user mailboxes.

Overall, the Filesystem Hierarchy Standard provides a logical organization of files and directories on a Linux system. By following this standard, developers and system administrators can create and manage applications and systems in a consistent and predictable way.