# p10k prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


plugins=(
  zsh-syntax-highlighting # slow af on wsl/ssh
  colored-man-pages
  docker
  docker-compose
  git
  macos
  pip
  ubuntu
  vi-mode
  vscode
  z
  zsh-autosuggestions
 brew)

export ZSH="$HOME/.oh-my-zsh"
# ---------- ohmyzsh configuration ----------
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# zstyle ':omz:update' frequency 13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
# -- plugin --
ZSH_AUTOSUGGEST_STRATEGY=(completion)
VI_MODE_SET_CURSOR=true
# VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true # SLOW
# ---------- ohmyzsh configuration ----------
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_profile

if command -v brew &> /dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export $EDITOR="vim"

alias zshconfig="code ~/.zshrc"
alias sshconfig="code ~/.ssh/config"
# alias zshref="exec zsh" # apparently exec is better
alias zshref="omz reload" # 
# alias zshref='source ~/.zshrc'
alias ohmyzsh="code ~/.oh-my-zsh"
alias p10kupdate='git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull'
alias vim='nvim'
alias sen='yt-dlp -S "res:720"'
alias ayt='yt-dlp -f "ba" -S "ext" --embed-thumbnail --embed-metadata'
alias dim='echo $(tput cols) columns x $(tput lines) rows'
alias transfer='rsync -vahzP'
alias stop='ssh -O stop'
alias bu="brew update && brew upgrade && brew cleanup"
alias cboard='echo "" | clipcopy && echo "clipboard cleared"'
alias vsi='vcsi'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# fzf stuff
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setting fd as default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude .cache'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# paths
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}
# dir fuzzy completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pnpm
export PNPM_HOME="/Users/spring/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/Users/spring/.bun/_bun" ] && source "/Users/spring/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# idk if true ^^
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
