# https://github.com/nvm-sh/nvm#installing-and-updating
# https://github.com/zsh-users/zsh-autosuggestions
# https://github.com/zsh-users/zsh-syntax-highlighting
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Golang
# https://github.com/stefanmaric/g
export GOPATH="$HOME/go"
export GOROOT="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"
alias gvm="$GOPATH/bin/g"

# Python
# https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
# https://github.com/rbenv/rbenv#basic-git-checkout
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# ibus
# https://github.com/BambooEngine/ibus-bamboo/wiki
export XMODIFERS=@im=ibus

# homebrew
# https://docs.brew.sh/Homebrew-on-Linux
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# nvm
# https://github.com/nvm-sh/nvm#git-install
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# android
# https://github.com/expo/expo-cli/issues/4535
export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${ANDROID_HOME}/tools:${PATH}
export PATH=${ANDROID_HOME}/emulator:${PATH}
export PATH=${ANDROID_HOME}/platform-tools:${PATH}