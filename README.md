# ~/.dotfiles

Various dotfiles managed with [GNU/Stow](https://www.gnu.org/software/stow/)

## About

I'm a backend Ruby/Rails developer and as such this repo will largely be related to my workflow around those tools. Ruby, Rails, Docker, and git to name a few.

It's pretty opinionated as this is the actual dot files that I use on a day to day basis.

PRs are welcome but not all will be accepted for the same reasons as above.

## Setup

Install GNU/Stow with your favourite package manger

`yay -S stow`

`dnf install stow`

`apt-get install stow`

`brew install stow`

Clone the repo

`git clone git@github.com:rmcfadzean/dotfiles.git ~/.dotfiles && cd $_`

Run `stow [package]` for each `package` you want to install. For example to install the ruby dots you would use

`stow ruby`

## Packages

### Ruby

**Hasn't been updated in awhile**

- `gem` doesn't install docs by default
- `rails new` uses sane defaults
  - Postgres
  - No Actioncable
  - No TestUnit because we prefer RSpec
- A `~/.ruby-version` using the latest Ruby (Read by `chruby/auto.sh` and other ruby version managers)
- Includes `chruby` & `ruby-install` with zplug magic

### Node.js

- Use [FNM](https://github.com/Schniz/fnm) to manage node versions (Works with `.node-version` and `.nvmrc` files and faster than NVM!)

### Git

#### Config

- The start of a nice ignore and some defaults
- [delta](https://github.com/dandavison/delta) for pretty diffs

### ZSH

#### Config

- Plugins managed with [zinit](https://github.com/zdharma/zinit)
- Case insensitive autocomplete
- A collection of [aliases](../blob/master/zsh/.zsh/aliases.zsh)
- Prompt is [Starship](https://starship.rs/) (Note: Also run `stow starship` if you want the included prompt. Otherwise configure your own)

### Tmux

**Hasn't been updated in awhile**

- `Ctrl-A` instead of `Ctrl-B` as prefix
- `r` is bound to reload the `.tmux.conf`
- A slightly nicer theme

### Nano

- 2 Spaces. Always.
- Highlighting

### Tools

- [zoxide](https://github.com/ajeetdsouza/zoxide) for quick directory switching (the new ~~`j`~~ [z](https://github.com/rupa/z))
- [k](https://github.com/supercrabtree/k) is a nicer, git-aware `ls`
- [direnv](https://direnv.net/) for loading env vars from `.envrc`
- [tokei](https://github.com/XAMPPRocky/tokei) code stats
- [bat](https://github.com/sharkdp/bat) like `cat` but nicer
- [fzf](https://github.com/junegunn/fzf-bin) included!
- [delta](https://github.com/dandavison/delta) included!
- [duf](https://github.com/muesli/duf) modern `df`!
- [dust](https://github.com/bootandy/dust) modern `du`!
- [xh](https://github.com/ducaale/xh) a simple http client
- [glow](https://github.com/charmbracelet/glow) markdown on the CLI!
