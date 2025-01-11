sudo apt update && sudo apt upgrade
sudo apt install gcc g++ make curl neofetch tree -y

# git and stuff
sudo apt install git
git config --global user.name "29-29"
git config --global user.email "ackx29sodo@gmail.com"

sudo apt install pass
git config --global credential.credentialStore gpg
pass init 4EFAF11709ABA0875A5C9AE951B3B77D19B8B6B9
git credential-manager github login

## lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

# terminal editors and stuff
sudo apt install tmux neovim -y

# oh-my-zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

