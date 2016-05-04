# Load ~/.aliases, ~/.bash_prompt, ~/.bashrc, ~/.exports, ~/.extra, ~/.functions, ~/.osx NOT ~/.inputrc
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{aliases,bash_prompt,bashrc,exports,extra,functions,git-completion,osx}; do
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
##
# Your previous /Users/jeshuamaxey/.bash_profile file was backed up as /Users/jeshuamaxey/.bash_profile.macports-saved_2013-12-24_at_13:56:38
##

# MacPorts Installer addition on 2013-12-24_at_13:56:38: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


export NVM_DIR="/Users/jeshuamaxey/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# The next line updates PATH for the Google Cloud SDK.
source '/Users/jeshuamaxey/code/y/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/jeshuamaxey/code/y/google-cloud-sdk/completion.bash.inc'
