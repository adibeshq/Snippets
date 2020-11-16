Switching the hibernation mode to 25 will make make a MacBook hibernate instead of sleep (see discussion below as to whether it's a good idea).

```bash
sudo pmset -a hibernatemode 25
```

To revert it back to the default for MacBooks do (which powers the ram and writes image to disk)

```bash
sudo pmset -a hibernatemode 3
```

If you want to sleep/hibernate your machine from the command line do

```bash
pmset sleepnow
```

**Is it a good idea to hibernate your MacBook?**

If your machine supports `standby` mode, then there isn't much point in changing the hibernate mode, because by default it is in standby after 1.15hrs. In standby mode, the RAM is powered off. On these machines it only takes a few extra seconds to come out of hibernate compared to coming out of sleep. However, standby isn't exactly the same as hibernate, for more details see http://support.apple.com/kb/HT4392

You can also run `pmset -g` to see whether `standby` is set and how long `standbydelay` is. If you don't see `standby`, your hardware doesn't support this feature.

If your hardware doesn't support the standby feature, then hibernation is an (as mentioned in older posts) "emergency" state, so it's probably best to leave this setting as is. That being said, I hibernate my MacBook before I go away and haven't run into any problems.'

Lots more discussion here [Does Mac OS X support hibernation?](https://superuser.com/questions/59188/does-mac-os-x-support-hibernation/571283#571283)