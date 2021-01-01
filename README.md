# omz-themes-standalone

A standalone plugin that gives you the [oh-my-zsh][ohmyzsh] themes without requiring everything else that comes with oh-my-zsh.

**Note:** this plugin makes it easier to use parts of omz without requiring the full thing.

## Usage

Simply set a theme in your `.zshrc` file and source this plugin:

```zsh
# CHANGE ME
ZSH_PLUGINS=~/path/to/my/plugins

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="refined"
source $ZSH_PLUGINS/omz-themes-standalone/omz-themes-standalone.zsh
```

## Themes

Check out previews of the [oh-my-zsh themes here][omz-themes].

## Installation

### Install with a plugin manager

Installing with a plugin manager is the recommended method so that you can get updates.

- [pz]: `pz source mattmc3/omz-themes-standalone`
- [znap]: `znap source mattmc3/omz-themes-standalone`
- [antibody]: `antibody bundle mattmc3/omz-themes-standalone`
- [antigen]: `antigen bundle mattmc3/omz-themes-standalone`
- [zgen]: `zgen load mattmc3/omz-themes-standalone`

### Install manually

```zsh
# set your desired plugin path
ZSH_PLUGINS=${ZDOTDIR:-$HOME}/.zplugins

# clone the repository
git clone https://github.com/mattmc3/omz-themes-standalone $ZSH_PLUGINS/omz-themes-standalone
```

[ohmyzsh]: https://github.com/ohmyzsh/ohmyzsh
[omz-themes]: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
[antigen]: https://github.com/zsh-users/antigen
[antibody]: https://getantibody.github.io
[pz]: https://github.com/mattmc3/pz
[znap]: https://github.com/marlonrichert/zsh-snap
[zgen]: https://github.com/tarjoilija/zgen
