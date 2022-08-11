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