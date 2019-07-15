this_dir="${0:A:h}"
ZSH="${ZSH:-$this_dir/oh-my-zsh}"

ZSH_THEME="${ZSH_THEME:-refined}"

# load prompt related libs
if ! typeset -f bzr_prompt_info > /dev/null; then
  source "$ZSH"/lib/bzr.zsh
fi

if ! typeset -f git_prompt_info > /dev/null; then
  source "$ZSH"/lib/git.zsh
fi

if ! typeset -f ruby_prompt_info > /dev/null; then
  source "$ZSH"/lib/prompt_info_functions.zsh
fi

source "$ZSH"/lib/theme-and-appearance.zsh

# Load stuff from the plugins areas that themes use
# lots of themes use the battery plugin
if ! typeset -f battery_pct_prompt > /dev/null; then
  source "$ZSH"/plugins/battery/battery.plugin.zsh
fi

# some themes require this from the git plugin
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}

# remove existing theme variables
PROMPT=
RPROMPT=
PROMPT2=
RPS1=

# from oh-my-zsh/oh-my-zsh.zsh:99
# Load the theme
if [[ "$ZSH_THEME" == "random" ]]; then
  if [[ "${(t)ZSH_THEME_RANDOM_CANDIDATES}" = "array" ]] && [[ "${#ZSH_THEME_RANDOM_CANDIDATES[@]}" -gt 0 ]]; then
    themes=($ZSH/themes/${^ZSH_THEME_RANDOM_CANDIDATES}.zsh-theme)
  else
    themes=($ZSH/themes/*zsh-theme)
  fi
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random omz theme '$RANDOM_THEME:t:r' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]; then
    if [ -f "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme" ]; then
      source "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme"
    elif [ -f "$ZSH_CUSTOM/themes/$ZSH_THEME.zsh-theme" ]; then
      source "$ZSH_CUSTOM/themes/$ZSH_THEME.zsh-theme"
    else
      source "$ZSH/themes/$ZSH_THEME.zsh-theme"
    fi
  fi
fi
