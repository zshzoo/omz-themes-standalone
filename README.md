# omz-themes-standalone

A standalone plugin that gives you the oh-my-zsh themes without requiring
everything else.

## Usage

Add this to your `.zshrc` file:

```zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"
```

## Installation

### Manually

```zsh
# clone the repository
git clone https://github.com/mattmc3/omz-themes-standalone ~/path/to/somewhere

# add the following to your `.zshrc` file
source ~/path/to/somewhere/omz-themes-standalone.zsh
```

### Antibody

Add the following to your `.zshrc` file:

```zsh
antibody bundle mattmc3/omz-themes-standalone
```

### Antigen

Add the following to your `.zshrc` file:

```zsh
antigen bundle mattmc3/omz-themes-standalone
```

### Zplugin

Add the following to your `.zshrc` file:

```zsh
zplugin light mattmc3/omz-themes-standalone
```

### Zgen

Add the following to your `.zshrc` file in the same place you're doing
your other `zgen load` calls:

```zsh
zgen load mattmc3/omz-themes-standalone
```
