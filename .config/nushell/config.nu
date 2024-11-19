alias fuck = thefuck $"(history | last 1 | get command | get 0)"

alias :q = exit
alias c = clear
alias update = yay -Syu
alias install = yay -S
alias remove = yay -Rns
alias cacheclear = yay -Sc
alias pkgfind = yay -Ss
alias Sudo = sudo
alias the-book = rustup doc --book

hyfetch
pokemon-colorscripts --no-title -s -r
$env.config = {
  show_banner: false,
}
use ~/.cache/starship/init.nu
source ~/.zoxide.nu
