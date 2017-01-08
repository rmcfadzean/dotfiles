# ~/.dotfiles

Various dotfiles managed with [GNU/Stow](https://www.gnu.org/software/stow/)

## About

I'm a backend Ruby/Rails developer and as such this repo will largely be related to my workflow around those tools. Ruby, Rails, Docker, and git to name a few.

It's pretty opinionated as this is the actual dot files that I use on a day to day basis.

PRs are welcome but not all will be accepted for the same reasons as above.

## Setup

Install GNU/Stow with your favourite package manger

`pacaur -S stow`
`apt-get install stow`
`brew install stow`

Clone the repo

`git clone git@github.com:wonderbread/dotfiles.git ~/.dotfiles && cd $_`

Run `stow [package]` for each `package` you want to install. For example to install the ruby dots you would use

`stow ruby`

## Packages

### Ruby

* `gem` doesn't install docs by default
* `rails new` uses sane defaults
  * Postgres
  * No Actioncable
  * No TestUnit because we prefer RSpec
* A `~/.ruby-version` using the latest Ruby (Read by `chruby/auto.sh` and other ruby version managers)
* Includes `chruby` & `ruby-install` with zplug magic

### Node.js

* Use [NVM](https://github.com/creationix/nvm) to manage node versions
* `.nvmrc` defaults to `7.4.0`

### Git

* The start of a nice ignore and some defaults
* Most aliasing done through `alias.zsh`

### ZSH

* Plugins managed with [zplug](https://github.com/zplug/zplug)
* Case insensitive autocomplete
* A collection of aliases [I'm a relative reference to a repository file](../blob/master/zsh/.zsh/aliases.zsh)
* Theme is [intelfx's fork](https://github.com/intelfx/pure) of [pure](https://github.com/sindresorhus/pure)

### Tmux

* `Ctrl-A` instead of `Ctrl-B` as prefix
* `r` is bound to reload the `.tmux.conf`
* A slightly nicer theme

### Tools

* [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) for pretty diffs
* [z](https://github.com/rupa/z) for quick directory switching (the new `j`)
* [jq](https://stedolan.github.io/jq/) sed for json
* [fzf](https://github.com/junegunn/fzf) for nicer finding
* [k](https://github.com/supercrabtree/k) is a nicer, git-aware `ls`