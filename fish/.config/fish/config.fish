if status is-interactive
    # Commands to run in interactive sessions can go here
end

function starship_transient_prompt_func
  starship module time
  starship module character
end
starship init fish | source
enable_transience

nvm use default --silent

alias la='ls -la'
alias vim='nvim'
alias suv='sudo nvim'

#archy
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -Rsn'
alias pacup='sudo pacman -Syu'

#fedora
alias updown='sudo dnf offline-upgrade download'
alias upboot='sudo dnf offline-upgrade reboot'
