### Persian Keyboard
Replace `./files/ir` with `/usr/share/X11/xkb/symbols/ir` 

### Mac Like keybindings:

Edit the following file:

```
kate /usr/share/X11/xkb/keycodes/evdev
```

Set these codes like:

```
<LCTL> = 64;
<LWIN> = 37;
<LALT> = 133;
<SPCE> = 65;
<RALT> = 134;
alias <ALGR> = <RALT>;
<RWIN> = 105;
<COMP> = 135;
alias <MENU> = <COMP>;
<RCTL> = 108;
```

For finding the key codes install and run `xev`





__Shortcuts__:

___
Window one desktop to the left + right

Window one desktop up+down

___

one desktop to the left+right

Switch one desktop up+down 


> Sample shortcut schema is included that can be imported from Settings > Keyboard shortcuts (Compatible with Mac Keyboard)