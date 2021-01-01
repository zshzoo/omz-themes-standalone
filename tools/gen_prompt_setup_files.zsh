#!/usr/bin/env zsh

script_dir="${0:a:h}"

function _main() {
    local themes_dir="${script_dir:h}/themes"
    mkdir -p $themes_dir
    local theme_file theme_name prompt_setup_file
    for theme_file in $ZSH/themes/*.zsh-theme; do
        theme_name=${theme_file:t:r}
        prompt_setup_file=${themes_dir}/prompt_${theme_name}_setup

        echo "set_omz_prompt \"$theme_name\"" >| "$prompt_setup_file"
    done
}
_main
