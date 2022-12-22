### Installation:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

You can also change the theme. Replace the theme name in `~/.zshrc`. For example:

```
ZSH_THEME="jonathan"
```

---
### Auto-Suggestion:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

Then add the following line to `~/.zshrc`:
```
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```
---
### Syntax-Highlighting :

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

then add zsh-syntax-highlighting to plugin section in `~/.zshrc` file 
after that run command `source .zshrc`

---
### Open file with default app with one command :
Add below lines to the `~/.zshrc` file
```bash
function open () {
  xdg-open "$@">/dev/null 2>&1
}
```
