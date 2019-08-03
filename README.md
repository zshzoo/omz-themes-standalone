# omz-themes-standalone

A standalone plugin that gives you the [oh-my-zsh][omz] themes without requiring
everything else that comes with oh-my-zsh.

**Note:** this plugin can it easy to use parts of omz with plugin managers like
[antibody][antibody] without requiring all the rest.


## Usage

Add this to your `.zshrc` file:

```zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"
```

## Themes

Check out previews of the [oh-my-zsh themes here][omz-themes].

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


[antibody]:     https://getantibody.github.io
[omz]:          https://github.com/robbyrussell/oh-my-zsh
[omz-themes]:   https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
