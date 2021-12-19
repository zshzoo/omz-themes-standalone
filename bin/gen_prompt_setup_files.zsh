#!/usr/bin/env zsh

script_dir="${0:a:h}"

function _main() {
  local themes_dir="${script_dir:h}/themes"
  local omz_dir="${script_dir:h}/.ohmyzsh"
  if [[ ! -d $omz_dir ]]; then
    git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh $omz_dir
  fi
  mkdir -p $themes_dir
  local theme_file theme_name prompt_setup_file
  for theme_file in $omz_dir/themes/*.zsh-theme; do
    theme_name=${theme_file:t:r}
    prompt_setup_file=${themes_dir}/prompt_${theme_name}_setup

    echo "set_omz_prompt \"$theme_name\"" >| "$prompt_setup_file"
  done
}
_main
