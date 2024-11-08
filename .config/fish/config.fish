function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end
alias pamcan=pacman
thefuck --alias | source
zoxide init fish | source
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {}"
alias :q='exit'
alias c='clear'
alias update='yay -Syu'
alias install='yay -S'
alias remove='yay -Rns'
alias cacheclear='yay -Sc'
alias pkgfind='yay -Ss'
alias Sudo='sudo'
alias cd='z'
alias the-book='rustup doc --book'

hyfetch
kitty +kitten themes --reload-in=all catppuccin-mocha
pokemon-colorscripts --no-title -s -r
# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/yohann/.ghcup/bin $PATH # ghcup-env
fish_add_path /home/yohann/.spicetify
