autoload -U compinit
compinit -d ~/.cache/zsh/zsh_compinit_dumpfiles
_comp_options+=(globdots)		# Autocomplete dotfiles
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case insensitive tab completion
zstyle ':completion:*' menu select 'm:{a-z}={A-Za-z}' # case insensitive tab completion
unsetopt BEEP
setopt NO_CASE_GLOB # Set case insensitive globbing
setopt AUTO_CD # Automatically cd into a directory without typing `cd`
setopt CORRECT # Enable correction
setopt CORRECT_ALL # Enable correction

# history stuff
HISTSIZE=1000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY


# compinit

# neofetch

# DISABLE_AUTO_UPDATE="true"
# ENABLE_CORRECTION="true"

. ~/.config/zsh/.aliases
. ~/.config/zsh/.variables
. ~/.config/zsh/.plugins
. ~/.config/zsh/.prompt
. ~/.config/zsh/.functions
. ~/.config/zsh/.exports

# vim mode
bindkey -v
export KEYTIMEOUT=1
zmodload -i zsh/complist

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char
# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char
bindkey '^R' history-incremental-search-backward
bindkey -M vicmd 'g' vi-beginning-of-line
bindkey -M vicmd 'G' end-of-line

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init

echo -ne '\e[5 q' # Use beam shape cursor on startup.
precmd() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Yank to the system clipboard
function vi-yank-custom {
    zle vi-yank
   echo "$CUTBUFFER" | win32yank.exe -i
}

zle -N vi-yank-custom
bindkey -M vicmd 'y' vi-yank-custom


files_to_be_removed=(.sudo_as_admin_successful .viminfo .bash_history .node_repl_history .lesshst)

for file in "${files_to_be_removed[@]}"; do
    if [ -f "$HOME/$file" ]; then
        rm -r "$HOME/$file"
    fi
done

# Use lf (or ranger) to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

autopair-init
# cat ~/reminders.md
echo "~/reminders.md"
