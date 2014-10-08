# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# add MySQL to path
export PATH="/usr/local/mysql/bin:$PATH"

# add Octave to path

export PATH="/usr/local/octave/3.8.0/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*