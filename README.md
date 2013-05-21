vim-config
==========

My personal "Text Triumvirate" configuration as defined in this [Dr.Bunsen](http://www.drbunsen.org/the-text-triumvirate/) article.

It consists out of:
* A `.vimrc` with all required [Pathogen](https://github.com/tpope/vim-pathogen) modules. 
* A `.zshrc` for use with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).
* A `.tmux.conf` for use with tmux

The entire setup is primarily meant for use with Mac OS X, but is set up to be generic, so it might benefit others as well.
An install script that generates the required symlinks and binaries is provided
for linux based systems. (Which may or may not work in your situation.)

## Prerequisites
* You have `zsh` installed
* You have installed `oh-my-zsh` as outlined [here](https://github.com/robbyrussell/oh-my-zsh)
* You have `tmux` installed
* You have `vim` installed and compiled with `ruby` and `python` support
* You have both `ruby` and `python` installed

## Installation
Installation on any Linux or OSX machine is pretty straightforward:
```
cd ~
git clone https://github.com/Remz-Jay/vim-config.git
cd vim-config
./linux-bootstrap.sh
```
## Credits 

The entire setup is based on Michiel Roos' configuration. You can say thanks at [@TuurlijkNiet][1]

[1]: https://twitter.com/TuurlijkNiet       "Twitter"

