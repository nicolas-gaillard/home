IGNORE_FILES="install.sh|remove.sh|README.md|.git|.gitignore"

echo "============================="
echo "TERMINAL CONFIGURATION SCRIPT"
echo "============================="

# Brew
read -p "Install brew ? (y/n) " answer
if [[ $answer =~ [yY][eE][sS]|[yY] ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew update
    brew upgrade
    brew cleanup
fi

# Iterm2
read -p "Install Iterm2 ? (y/n) " answer
if [[ $answer =~ [yY][eE][sS]|[yY] ]] ; then
    brew cask install iterm2
fi

# zsh / oh-my-zsh
read -p "Install zsh and oh-my-zsh ? (y/n) [WARNING BREW IS NEEDED] " answer
if [[ $answer =~ [yY][eE][sS]|[yY] ]] ; then
    brew install zsh
    zsh --version
    chsh -s $(which zsh)
    # zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "zsh plugins"
# brew install zsh-syntax-highlighting
# brew install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "zsh themes"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
brew install starship
# curl -fsSL https://starship.rs/install.sh | bash

echo "fonts"
# font (https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font
brew cask install font-firacode-nerd-font-mono

echo "others"
# brew install fzf
brew install exa # better ls
brew install bat # better cat
brew install ripgrep
brew install tree
brew install mas
brew install httpie
brew install pstree

echo "End of the script"
