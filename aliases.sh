# Aliases for bash/zsh
# vi: set syntax=sh :

OS="$( uname -s )"

alias lrt='ls -lArth'

alias vbrc="vim $USER_DOTFILE_DIR/bashrc"
alias vzrc="vim $USER_DOTFILE_DIR/zshrc"
alias vsrc="vim $USER_DOTFILE_DIR/shellrc"
alias val="vim $USER_DOTFILE_DIR/aliases.sh"
alias vvrc="vim $USER_VIM_DIR/vimrc"

alias diff='colordiff'
alias untar='tar -zxvf'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias exed="$HOME/workflow/exed/bin/exed"
alias mkex="$HOME/workflow/mkex/bin/mkex"

alias vup="cd $HOME/workflow/vagrant-ique && vagrant up"
alias vssh="cd $HOME/workflow/vagrant-ique && vagrant ssh"
alias vhalt="cd $HOME/workflow/vagrant-ique && vagrant halt"

if which ag > /dev/null; then
    alias ag="ag --color-line-number='07;01;38;5;131' --color-match='07;38;5;74' --color-path='07;01;38;5;131'"
fi

if [[ "$OS" == 'Darwin' ]]; then
    alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
    alias ls='ls -G'
elif [[ "$OS" == 'Linux' ]]; then
    alias ls='ls --color=auto'
fi

if [[ -n "$ZSH_NAME" ]]; then # ZSH ONLY ALIASES
    alias    zzmv='noglob zmv -W'
    alias -s out='vim'
    alias -s txt='vim'

    if [[ "$OS" == 'Darwin' ]]; then
        alias -s xls='open -a LibreOffice'
        alias -s xlsx='open -a LibreOffice'
        alias -s ods='open -a LibreOffice'
        alias -s odt='open -a LibreOffice'
    fi
fi

unset OS

