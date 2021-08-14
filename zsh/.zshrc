autoload -U compinit
compinit -d ~/.cache/zsh/zsh_compinit_dumpfiles
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
unsetopt BEEP
setopt NO_CASE_GLOB # Set case insensitive globbing
setopt AUTO_CD # Automatically cd into a directory without typing `cd`
setopt CORRECT # Enable correction
setopt CORRECT_ALL # Enable correction

HISTSIZE=1000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY 


# compinit

# neofetch

# DISABLE_AUTO_UPDATE="true"
# ENABLE_CORRECTION="true"

. ~/.config/zsh/.zsh_aliases
. ~/.config/zsh/.zsh_variables
. ~/.config/zsh/.zsh_plugins
. ~/.config/zsh/.zsh_prompt
. ~/.config/zsh/.zsh_functions

bindkey -v

if [ -f ".sudo_as_admin_successful" ]; then
    rm ".sudo_as_admin_successful"
fi

if [ -f ".viminfo" ]; then
    rm ".viminfo"
fi

cat ~/.config/zsh/.remindme.md
