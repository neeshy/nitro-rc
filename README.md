## nitro init scripts

This repository contains nitro init scripts.

This project is based on https://github.com/neeshy/runit-rc
- which is based on https://github.com/void-linux/void-runit
- which is loosely based on https://github.com/chneukirchen/ignite

## Dependencies

- A POSIX shell
- sed
- procps-ng (sysctl)
- kmod
- util-linux
- iproute2
- nitro
- runit (chpst, utmpset)
- seedrng (https://git.zx2c4.com/seedrng/about/)

## Usage

Place any of your own services in `/etc/nitro`.
Refer to the documentation of `nitro` for further details on the required directory structure.

A runlevel for single-user mode is provided at `/etc/nitro.single`.
You may append ` -- single` to the kernel command line to execute this runlevel on startup.
Depending on the initramfs being used, this command line parameter will differ.
For example, on Alpine Linux you must pass `KOPT_init_args=single`.
Refer to your distribution's initramfs documentation for further details.

## Copyright

This project is in the public domain.

To the extent possible under law, the creator of this work has waived
all copyright and related or neighboring rights to this work.

http://creativecommons.org/publicdomain/zero/1.0/
