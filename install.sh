echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
rm -rf $(brew --repo homebrew/core)
brew tap homebrew/core
brew update

echo "Install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
sed -e s/robbyrussell/lukerandall/ ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

echo "Install mas"
brew install mas

echo "Install brew apps"
brew install rectangle \
firefox \
visual-studio-code \
jetbrains-toolbox \
discord \
steam \
microsoft-teams \
adobe-creative-cloud \
python

echo "Install Microsoft Office"
mas install 462054704 \
462058435 \
462062816 \
784801555 \
985367838 \
823766827

echo "Install XCode"
mas install 497799835
