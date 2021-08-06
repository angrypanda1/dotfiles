# Ar-Round minimal zsh theme
# Author: owl4ce
# ----------------------------------
# https://github.com/owl4ce/dotfiles
# Requires Nerd Fonts for the icons

if [[ $EUID -eq 0 ]]; then
    user_symbol="%F{11}%f"
else
    user_symbol="%F{11}%f"
fi

# Configuration
num_dirs=2 # Use 0 for full path
dir_path="%F{white}%$num_dirs~%k%}"
background_jobs="%(1j.%F{2}%f.)"
non_zero_return_value="%(0?..%F{1}%f)"

# Left part of prompt
PROMPT='$user_symbol '
# Right part of prompt
RPROMPT=' $background_jobs $non_zero_return_value $dir_path'
# Input in bold
zle_highlight=(default:bold)

ZSH_THEME_GIT_PROMPT_PREFIX="%F{4} %K{0} %F{white}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
