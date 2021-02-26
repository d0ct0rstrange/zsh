# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi





# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


#correcting ctrl+arrow behaviour
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# Created by newuser for 5.8

#theme and auto suggestions
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#plugins=(zsh-autosuggestions)
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh
source /home/kali/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. /usr/share/autojump/autojump.sh

#aliases
source $HOME/.config/zsh/aliasrc


# Custom ZSH Binds
bindkey '^ ' autosuggest-accept



# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme





#ENVIRONMENT VARIABLES
export MEDIUM="/usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt"

# OH MY ZSH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/.oh-my-zsh

# OHMYZSH plugins

plugins=(command-not-found)

source $ZSH/oh-my-zsh.sh

