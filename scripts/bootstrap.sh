sudo apt install -y \
 git \
 zsh \
 vim \
 curl

# chrome
# https://www.ubuntuupdates.org/ppa/google_chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt install google-chrome-stable

# keepassxc
# https://launchpad.net/~phoerious/+archive/ubuntu/keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt install keepassxc

# code
# https://www.ubuntuupdates.org/ppa/vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# docker
# https://docs.docker.com/engine/install/ubuntu/
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# https://docs.docker.com/engine/install/linux-postinstall/
sudo usermod -aG docker $USER
newgrp docker
sudo chmod 666 /var/run/docker.sock

# docker-compose
# https://docs.docker.com/compose/install/standalone/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod 0755 /usr/local/bin/docker-compose

# shell
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) # set zsh default shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# go
# https://github.com/stefanmaric/g
curl -sSL https://git.io/g-install | sh -s
gvm # list and set version
gvm install 1.18 # install
go version # check

# python
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
pyenv install -l # list
pyenv versions # list installed
pyenv install 3.6 # install
pyenv global 3.6 # set version
python --version # check

# aws
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
# https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-linux.html
# https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html
pip install --upgrade pip
python -m pip install awscli awsebcli
cd /tmp
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip ./aws-sam-cli-linux-x86_64.zip -d sam-cli
cd sam-cli
sudo ./install
aws --version
eb --version
sam --version

# rbenv
# https://github.com/rbenv/rbenv
# https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-22-04
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.7.1 # install ruby 2.7.1
rbenv global 2.7.1 # set global
ruby --version # check version
gem install bundler
rbenv rehash
bundle install

# brew
# https://brew.sh/
# https://docs.brew.sh/Homebrew-on-Linux
sudo apt-get install build-essential procps curl file git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew --version
brew list

# fvm
# https://fvm.app/docs/getting_started/installation
brew tap leoafarias/fvm
brew install fvm
fvm --version # check

# bamboo
# https://github.com/BambooEngine/ibus-bamboo
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo
ibus restart

# nodejs
# https://github.com/nvm-sh/nvm#installing-and-updating
git clone https://github.com/nvm-sh/nvm.git .nvm
nvm install 14.15.5 # install version 14.15.5
nvm alias default 14.15.5
nvm use 14.15.5 # use version 14.15.5
node -v # check

# git
git config --global user.email "manhpham90vn@icloud.com"
git config --global user.name "Manh Pham"