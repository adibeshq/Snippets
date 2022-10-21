### Clear all KDE configurations

remove the following files:

```
/home/seraj/.kde4
/home/seraj/.local/share/plasma
/home/seraj/.config/kdeglobals
/home/seraj/.config/kwinrc
```
### Missing video thumnail

```
sudo pacman -S ffmpegthumbs kdegraphics-thumbnailers
```

Then navigate to Dolphin configuration and enable thumnail for movies and PDF files or other extensions
