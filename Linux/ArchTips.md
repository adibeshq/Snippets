#### Remove a package:
```
pacman -Runs pkg-name
```
works best and is preferable to "pacman -Rcns pkg-name":

-u, --unneeded
           Removes the targets that are not required by any other packages.
           This is mostly useful when removing a group without using the -c
           option, to avoid breaking any dependencies.

-c, --cascade
           Remove all target packages, as well as all packages that depend on
           one or more target packages. This operation is recursive, and must
           be used with care since it can remove many potentially needed
           packages.


#### Fixing the resolv.conf readonly:

```
chattr +i /etc/resolv.conf
```

reverse with `-i`