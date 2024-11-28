alias :q = exit
alias c = clear
alias update = yay -Syu
alias install = yay -S
alias remove = yay -Rns
alias cacheclear = yay -Sc
alias pkgfind = yay -Ss
alias the-book = rustup doc --book

c
hyfetch
pokemon-colorscripts --no-title -s -r
$env.config = {
  show_banner: false,
}
use ~/.cache/starship/init.nu
source ~/.zoxide.nu
