# default PATH
export PATH="/usr/local/bin:$PATH"

# yarn - faster than npm
export PATH="$PATH:`yarn global bin`"

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# export PATH after initializing rbenv to prioritize project binstubs
export PATH="./bin:$PATH"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi