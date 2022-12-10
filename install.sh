source ./brew/brew.sh

brew bundle


echo "*** Installing Oh My zsh ***"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "*** creating symbolic links ***"
ln $PWD/.zshrc ~/.szhrc
ln $PWD/.gitconfig ~/.gitconfig

gh auth login
