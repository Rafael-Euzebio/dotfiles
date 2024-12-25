⚠️ **this repository contains my own dotfiles for my personal use. Following the instructions below or running any scripts in this repository may overwrite your own dotfiles. I am not responsible for any data loss you cause by running any script or instruction contained in this repository. MAKE SURE YOU KNOW WHAT YOU'RE DOING** ⚠️


### Instructions

clone the repository:

`git clone git@github.com:Rafael-Euzebio/dotfiles.git`

Create a `.zshenv` folder in your home directory:

`touch ~/.zshenv`

add the following contents to it

```bash
export DOTFILES="(path to the this repository's directory)"

export THEME="(options: christmas, christmas-dark, dracula)"
```

- Some files must be linked  or copied from this repository. **Following the next instructions may overwrite your own files**

```bash
ln -s $DOTFILES/.themes ~/.themes
ln -s $DOTFILES/.icons ~/.icons
ln -s $DOTFILES/.config/nvim ~/.config/nvim
ln -s $DOTFILES/.config/tmux ~/.config/tmux
ln -s $DOTFILES/.moc ~/.moc
ln -s $DOTFILES/.config/tilix  ~/.config/tilix
ln -s $DOTFILES/.config/rofi/ ~/.config/rofi
```

- lastly, the `change_theme` file, which changes themes based on the value of `$THEME` defined in `.zshenv`

```bash
ln -s $DOTFILES/.local/bin/change_theme ~/.local/bin/change_theme
```

Some themes are changed in their own apps like [Neovim](https://github.com/Rafael-Euzebio/dotfiles/blob/master/.config/nvim/lua/Plugins/nvim-colorscheme.lua) and [Tmux](https://github.com/Rafael-Euzebio/dotfiles/blob/master/.config/tmux/tmux.conf) through through `$THEME` value

Others are changed by relinking files/folders (this is only used as a last resource when config files do not allow programming logic) 

You might wanna check [`change_theme`](https://github.com/Rafael-Euzebio/dotfiles/blob/master/.local/bin/change_theme)
