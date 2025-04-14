# Add custom aliases and prompt
alias ll='ls -la'
alias gs='git status'
PS1='\[\e[0;32m\]\u@\h:\w\$\[\e[m\] '

# Neofetch on login
if command -v neofetch &>/dev/null; then
    neofetch
fi
