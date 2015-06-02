# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# add MySQL to path
export PATH="/usr/local/mysql/bin:$PATH"

# add Android SDK to path
export PATH="/Users/jeshuamaxey/dev/android/sdk/platform-tools:$PATH"
export PATH="/Users/jeshuamaxey/dev/android/sdk/tools:$PATH"

# add Octave to path
# export PATH="/usr/local/octave/3.8.0/bin:$PATH"
# set default terminal for gnu plot
export GNUTERM="x11"

# android
export PATH="/Users/jeshua/code/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:$PATH"
export PATH="/Users/jeshua/code/adt-bundle-mac-x86_64-20140702/sdk/tools:$PATH"

# haskell
export PATH="/Users/jeshua/Library/Haskell/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# symlink to get neo4j to use the right version of java
export JAVA_HOME=/Library/Internet-Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
