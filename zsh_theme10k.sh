sudo yum update -y
sudo yum install -y git make ncurses-devel gcc autoconf man yodl
git clone -b zsh-5.7.1 https://github.com/zsh-users/zsh.git /tmp/zsh
cd /tmp/zsh
./Util/preconfig
./configure
sudo make -j 20 install
which zsh

sudo yum install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo ssh-keygen -t rsa -b 4096 -C "antonio.cardoso@gerencianet.com.br"
ssh-agent -s
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
ECHO "Copie e cole no github SSH and GPG keys"


git clone git@github.com:zsh-users/zsh-autosuggestions.git .oh-my-zsh/zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git .oh-my-zsh/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-completions.git .oh-my-zsh/zsh-completions

git clone https://github.com/romkatv/powerlevel10k.git .oh-my-zsh/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

sudo yum install wget -y

rm -rf $HOME/.zshrc
wget https://github.com/AntonioHenriqueAC/settings/blob/master/dev/.zshrc ~/