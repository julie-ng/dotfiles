# Julie's dotfiles.

Originally cloned, stripped and modified from [Paul Irish's dotfiles](https://github.com/paulirish/dotfiles/) with some further customizations:

## Install

1. Clone this repository
2. Run `./sync.sh` and confirm deletion of existing files when prompted.

## Customizations

  - **`.bash_prompt`** based on [@necolas dotfiles](https://github.com/necolas/dotfiles/blob/master/bash/bash_prompt). I found it to be neater and easier to understand.
  - **[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)**
  - **[pure prompt](https://github.com/sindresorhus/pure)**

    Install

    ```
    yarn global add pure-prompt
    ```

    Then load files in `.zshrc`

    ```
    fpath=( "$HOME/.zfunctions" $fpath )
    ZSH_THEME=""

    # Load pure
    autoload -U promptinit; promptinit
    prompt pure
    ```
  - **[z jumper](https://github.com/rupa/z)**

    Lets me jump around in history without knowing/typing entire path, for example:

    ```
    $ z dotfiles

    # Hit Tab, Enter and you're there
    $ ~/Code/dotfiles
    ```
