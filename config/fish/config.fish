function fish_mode_prompt
end

set -U fish_prompt_pwd_dir_length 100
set -U VIRTUAL_ENV_DISABLE_PROMPT yas
alias n nvim
alias nconfig "nvim $HOME/.config/nvim/init.vim"
alias nlconfig "nvim $HOME/.config/local_configs/init.local.vim"
alias fconfig "nvim $HOME/.config/fish/config.fish"
alias flconfig "nvim $HOME/.config/local_configs/config.local.fish"
alias tconfig "nvim $HOME/.tmux.conf"
alias tlconfig "nvim $HOME/.config/local_configs/tmux.local.conf"
alias rsource "source $HOME/.config/fish/config.fish"

alias g "git"
alias gs "git status"
alias ga "git add ."
alias gc "git commit -m"
alias gd "git diff"
alias gac "git add . && git commit -m"
alias gp "git push"
alias gr "git reset HEAD --hard"
alias lg lazygit

set -gx PATH $PATH $HOME/Tools $HOME/Tools/go/bin
set -gx EDITOR (which vim)

function take
    set folder $argv[1]
    set args $argv[2..]
    mkdir $args $folder
    cd $folder
end

function vcurl
    set url $argv[1]
    curl $url | vim -
end

function ncurl
    set url $argv[1]
    curl $url | nvim -
end

if test -f $HOME/.config/local_configs/config.local.fish
    source $HOME/.config/local_configs/config.local.fish
end
