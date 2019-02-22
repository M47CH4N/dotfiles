# aliases
alias ll='ls -l'
alias la='\ls -a'
alias lla='\ls -l -a'
alias df='df -h'
alias clc='clear'

# git status
PROMPT="[%{$fg[yellow]%}%n%{$reset_color%}]%{$fg[yellow]%}%(!.#.$) %{$reset_color%}"
PROMPT2="%{$fg[yellow]%}%_> %{$reset_color%}"
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
RPROMPT="%{$fg[blue]%}[%~]%{$reset_color%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
