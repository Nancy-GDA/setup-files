source ./brew/brew.sh

brew bundle


echo "*** Installing Oh My zsh ***"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "*** creating symbolic links ***"
ln -sf $PWD/.zshrc ~/.szhrc
ln -sf $PWD/.gitconfig ~/.gitconfig

gh auth login
