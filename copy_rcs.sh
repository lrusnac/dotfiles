#!/bin/bash
if [ $# -eq 0 ]; then
    CONFIG="all"
else
    CONFIG=$1
fi

if [ $CONFIG == 'all' -o $CONFIG == 'mac' ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "install brew packages"
    cat homebrew-packages | xargs brew install
    echo "install brew-cask packages"
    cat homebrew-cask-packages | xargs brew cask install
fi

# if [ $CONFIG == 'all' -o $CONFIG == 'iterm' ]; then
#     mkdir ~/.iterm2
#     cp iterm ~/.iterm2/iterm
#     # Specify the preferences directory
#     defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm2"
#     # Tell iTerm2 to use the custom preferences in the directory
#     defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
#     # https://github.com/sindresorhus/iterm2-snazzy 11pt Hack Regular
# fi

if [ $CONFIG == 'all' -o $CONFIG == 'vim' ]; then
    sh bin/installvimconfig.sh
    cp ~/.vimrc{,_bk}
    cp vimrc ~/.vimrc
    echo "Copied vimrc to ~/.vimrc. Old vimrc copied to ~/.vimrc_bk"
    vim +PluginInstall +qall
    echo "Installed vim plugins"
fi

if [ $CONFIG == 'all' -o $CONFIG == 'slate' ]; then
    cp ~/.slate{,_bk}
    cp slate ~/.slate
    echo "Copied slate to ~/.slate. Old slate copied to ~/.slate_bk"
fi

if [ $CONFIG == 'all' -o $CONFIG == 'karabiner' ]; then
    mkdir ~/.config/karabiner
    cp ~/.config/karabiner/karabiner.json{,_bk}
    cp karabiner.json ~/.config/karabiner/karabiner.json
    echo "Copied karabiner.json to  ~/.config/karabiner/karabiner.json. Old slate copied to  ~/.config/karabiner/karabiner.json_bk"
fi

if [ $CONFIG == 'all' -o $CONFIG == 'zsh' ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    cp ~/.zshrc{,_bk}
    cp zshrc ~/.zshrc
    echo "Copied zshrc to ~/.zshrc. Old zshrc copied to ~/.zshrc_bk"

    npm install --global pure-prompt
fi

if [ $CONFIG == 'all' -o $CONFIG == 'git' ]; then
    cp ~/.gitconfig{,_bk}
    cp gitconfig ~/.gitconfig
    echo "Copied gitconfig to ~/.gitconfig. Old gitconfig copied to ~/.gitconfig_bk"
fi

if [ $CONFIG == 'all' -o $CONFIG == 'bin' ]; then
    cp bin/prune /usr/local/bin/prune
fi