# Julie's dotfiles

Originally cloned, stripped and modified from [Paul Irish's dotfiles](https://github.com/paulirish/dotfiles/) with some further customizations.

## Install

1. Clone this repository
2. Run `./sync.sh` and confirm deletion of existing files when prompted.

## Custom Shell

![Preview](./screenshot.png)


### Look and Feel

- iTerm Theme: [Argonaut](https://github.com/pwaleczek/Argonaut-theme)
- Shell: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- Prompt: [Spaceship](https://github.com/denysdovhan/spaceship-prompt)
- Font: [Inconsolata](https://fonts.google.com/specimen/Inconsolata), [Inconsolata-g for Powerline](https://github.com/powerline/fonts/tree/master/Inconsolata-g)


### Additional Toools

- [z jumper](https://github.com/rupa/z)
- [eza](https://github.com/eza-community/eza)
- [difftastic](https://github.com/wilfred/difftastic)

## Mac Adjustments

### Git - Disable OS X Keychain

Mac OS by default wants to use the OS X keychain. But I want to use [`git-credential-netrc`](https://github.com/git/git/blob/master/contrib/credential/netrc/git-credential-netrc.perl). 

Verify problem with

```
$ git config --system credential.helper
osxkeychain
```

Then try

```
git config --system --unset credential.helper
```

Then hopefully it uses our [.gitconfig](./.gitconfig)…

## GPG Keys

Copy keys to another computer, per [gpg docs on exchanging keys](https://www.gnupg.org/gph/en/manual/x56.html).

- requires passwords for the keys
- note: this skips `--armour` flag, which creates ascii. 

#### Export Keys

```
gpg --export <user@email> --output <public.gpg>
gpg --export-secret-keys <user@email> --output <private.gpg>
```

#### Import Keys

```
gpg --import <public.gpg>
gpg --import <private.gpg>
```

#### Trust Key

If later using the key there is an erorr message that says 

> "There is no assurance this key belongs to the named user gpg:", 

then run

```
gpg --list-keys
gpg --edit-key <KEY_ID>
gpg> trust
```

and select 5

```
1 = I don't know or won't say
2 = I do NOT trust
3 = I trust marginally
4 = I trust fully
5 = I trust ultimately
m = back to the main menu
```

#### Using with `.netrc`

Use case: need to update GitHub API token.

First, decrypt the `.netrc.gpg` into `.netrc`

```
gpg --decrypt --recipient <user@email> -o .netrc .netrc.gpg
```

Make changes to `.netrc`

Then re-encrypt to a `.netrc.gpg`

```
gpg --encrypt --recipient <user@email> -o .netrc.gpg .netrc
```

Important: don't forget to delete unencrypted `.netrc` file
