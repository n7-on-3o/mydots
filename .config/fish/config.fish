if status is-interactive
    # Commands to run in interactive sessions can go here
end

function starship_transient_prompt_func
  starship module time
  starship module character
end
starship init fish | source
enable_transience

alias la='ls -la'
alias vim='nvim'
alias suv='sudo nvim'
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -Rsn'
alias pacup='sudo pacman -Syu'
