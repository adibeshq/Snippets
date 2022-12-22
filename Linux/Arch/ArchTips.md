## Remove a package:
```shell
pacman -Runs pkg-name
```
works best and is preferable to `pacman -Rcns pkg-name`:

`-u`, --unneeded Removes the targets that are not required by any other packages. This is mostly useful when removing a group without using the -c option, to avoid breaking any dependencies.

`-c`, --cascade Remove all target packages, as well as all packages that depend on one or more target packages. This operation is recursive, and must be used with care since it can remove many potentially needed packages.

---

## Fixing readonly resolv.conf:

```bash
chattr +i /etc/resolv.conf
```

reverse with -i

---
## To find the packages related to a library:
```bash
sudo pacman -Fy packagename
```
Use `-y` if you need to update the resource beforehand.

__A use case:__

My PC crashed due to the badly installed package named `libcrypto`. So I had to boot into a live archlinux and run the pacman to see the error message. I was something like

```bash
Cannot find the shared file or dir: libcrypto.so```
```

So I ran:

```bash
sudo pacman -Fy libcrypto.so
```
Result:
```bash
core/openssl-1.1 1.1.1.s-2
    usr/lib/openssl-1.1/libcrypto.so
```
So I had to install the new package into the system to make it work.

> Notice that the package manager itself wasn't functional event if I ran the arch-chroot on the crashed system

So I had to mount the root drive and run the following command to install the package into the system from outer linux environment:
```bash
sudo mount /dev/nvme0n1p6 /mnt
```
```bash
sudo pacstarp /mnt openssl-1.1
```
