### make sure we have OMZ set up
ZSH="${ZSH:-$HOME/.oh-my-zsh}"
[[ -d $ZSH ]] || git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh "$ZSH"

### omz theme lib dependencies
typeset -f bzr_prompt_info > /dev/null || source "$ZSH"/lib/bzr.zsh
typeset -f git_prompt_info > /dev/null || source "$ZSH"/lib/git.zsh
typeset -f nvm_prompt_info > /dev/null || source "$ZSH"/lib/nvm.zsh
typeset -f ruby_prompt_info > /dev/null || source "$ZSH"/lib/prompt_info_functions.zsh
source "$ZSH"/lib/theme-and-appearance.zsh

### omz theme plugin dependencies
# lots of themes use the battery plugin
typeset -f battery_pct_prompt > /dev/null || source "$ZSH"/plugins/battery/battery.plugin.zsh

# some themes require this function from the git plugin
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}

function set_omz_prompt {
  local theme=$1
  [[ -f $ZSH/themes/${theme}.zsh-theme ]] || return 1
  ZSH_THEME=$theme

  # themes are bad at reseting themselves, so let's help out by resetting to
  # zsh defaults before applying a new theme
  PROMPT='%n@%m %1~ %# '
  PROMPT2='%_> '
  PROMPT3='?# '
  PROMPT4='+%N:%i> '
  PS1=$PROMPT
  PS2=$PROMPT2
  PS3=$PROMPT3
  PS4=$PROMPT4
  SPROMPT='zsh: correct ''%R'' to ''%r'' [nyae]? '
  RPROMPT=''
  RPS1=''

  # set the theme
  source $ZSH/themes/$ZSH_THEME.zsh-theme
}

fpath+="${0:A:h}/themes"
if ! typeset -f promptinit > /dev/null; then
  autoload -U promptinit
fi
promptinit
prompt ${ZSH_THEME:-robbyrussell}
