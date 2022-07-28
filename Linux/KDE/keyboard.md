### Persian Keyboard
Replace `./files/ir` with `/usr/share/X11/xkb/symbols/ir` 

### Mac Like keybindings:

Edit the following file:

```
sudo kate /usr/share/X11/xkb/keycodes/evdev
```

Set these codes like:

```
<LALT> = 133;
<LCTL> = 64;
<SPCE> = 65;
<RCTL> = 108;
<RALT> = 134;
// Microsoft keyboard extra keys
<LWIN> = 37;
<RWIN> = 105;
<COMP> = 135;
```

For finding the key codes install and run `xev`
