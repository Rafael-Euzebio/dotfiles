# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/peco_zsh/peco.plugin.zsh
source ~/.zsh/zsh-z/zsh-z.plugin.zsh

autoload -U compinit && compinit
zstyle ':completion:*' menu select

alias exa="exa --icons"
alias ls="exa"
alias ytfzf="ytfzf -t"
alias ide="tilix --session=~/.config/tilix/ide.json"
alias notes="nvim --listen /tmp/nvimsocket"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rafael/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_CONTEXT_TEMPLATE=$'\ue795'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='#0abdc6'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#321959'
POWERLEVEL9K_DIR_HOME_FOREGROUND='#0abdc6'
POWERLEVEL9K_DIR_HOME_BACKGROUND='#0b2956'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='#0abdc6'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='#0b2956'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='#0abdc6'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='#0b2956'
POWERLEVEL9K_DIR_ETC_FOREGROUND='#0abdc6'
POWERLEVEL9K_DIR_ETC_BACKGROUND='#0b2956'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#ea00d9'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#321959'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#f57800'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#321959'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#00ff00'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#321959'
POWERLEVEL9K_STATUS_OK_BACKGROUND='#321959'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#ff0000'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='#321959'
POWERLEVEL9K_HISTORY_BACKGROUND='#0b2956'
POWERLEVEL9K_HISTORY_FOREGROUND='#0abdc6'
POWERLEVEL9K_TIME_BACKGROUND='#321959'
POWERLEVEL9K_TIME_FOREGROUND='#ea00d9'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
