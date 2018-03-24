# Julie's dotfiles.

Originally cloned, stripped and modified from [Paul Irish's dotfiles](https://github.com/paulirish/dotfiles/) with some further customizations:

## Install

1. Clone this repository
2. Run `./sync.sh` and confirm deletion of existing files when prompted.

## Customizations

![Preview](./screenshot.png)

### [zsh](https://github.com/robbyrussell/oh-my-zsh) 
  
I have customiezed **[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)** [🚀 spaceship](https://github.com/denysdovhan/spaceship-prompt) theme to look like the [pure prompt](https://github.com/sindresorhus/pure) I previously used, but discarded because it [mangled pinentry prompts](https://github.com/sindresorhus/pure/issues/366).

Then load files in `.zshrc`

```
fpath=( "$HOME/.zfunctions" $fpath )
ZSH_THEME="spaceship"

# Load pure
autoload -U promptinit; promptinit
prompt spaceship
```

### [z jumper](https://github.com/rupa/z)
  

Lets me [jump around in history without knowing/typing entire path](https://github.com/rupa/z), for example:

```
$ z dotfiles

# Hit Tab, Enter and you're there
$ ~/Code/dotfiles
```
