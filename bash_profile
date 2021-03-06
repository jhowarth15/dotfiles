# Load ~/.aliases, ~/.bash_prompt, ~/.bashrc, ~/.exports, ~/.extra, ~/.functions, ~/.osx NOT ~/.inputrc
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{aliases,bash_prompt,bashrc,exports,extra,functions,git-completion,osx,cytora}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
#. ~/code/z/z.sh

# init rvm
#source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Bash completion plugin
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# load virtualenvwrapper for python (after custom PATHs)
venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi

# configure git auto complete to work with alias (must be run after loading bash completion plugin)
__git_complete g __git_main