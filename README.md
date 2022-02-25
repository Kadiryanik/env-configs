This repository contains my development environment configurations.

## Vim Configuration
| Plugin | Description |
| ------ | ------ |
|VundleVim/Vundle.vim|Plugin manager|
|preservim/nerdtree|Tree Explorer|
|mbbill/undotree|Showing undo tree|
|junegunn/fzf|Fuzzy file, buffer, mru, tag, etc finder|
|junegunn/fzf.vim|Fuzzy file, buffer, mru, tag, etc finder|
|rking/ag.vim|For faster search|
|thaerkh/vim-workspace|Manage sessions|
|vim-scripts/AutoComplPop|Auto completer|
|airblade/vim-gitgutter|Shows a git diff in the sign column|
|tpope/vim-fugitive|Premier vim plugin for git|
|preservim/tagbar|Show tags in current file|
|morhetz/gruvbox|For colorscheme|
|vim-airline/vim-airline|Status bar|
|vim-airline/vim-airline-themes|Status bar themes|
|zivyangll/git-blame.vim|Show git blame in status bar|
|Kadiryanik/cs-in-qf.vim|Show cscope in quickfix|

### Installation
Type the following commands for installing the packages, copying and creating files/directories.
```sh
    $ cd vim-config
    $ ./install.sh
    $ vim --version
```
Make sure the vim version is higher than **8**. You can check *vim-version.txt* file for my vim version.
Also there is a binary **vim** which installed by *ubuntu 18.04 x64*.
You can get the latest version with following commands. Also you can get and compile latest version from source code of [vim][vim-official].
```sh
    $ sudo add-apt-repository ppa:jonathonf/vim
    $ sudo apt-get update && sudo apt-get install vim
```
Run vim and type following command for installing all plugins after vim setup is completed.
```sh
    :PluginInstall
```
After that you need to reopen vim, that's it. Your configuration is ready for use.
You can check and modify **~/.vimrc** file for more details.

## Tmux Configuration
Some key binding in the [tmux.conf] file.

## Bash Configuration
My bash config and some usefull functions in the [bashrc] file. And some other usefull installation in the [install.sh].

| App | Description |
| ------ | ------ |
|[vim]|As text editor|
|[cscope]|For browsing source code|
|[fzf]|For reverse search (Ctrl-r)|
|[tmux]|As terminal multiplexer|
|[minicom]|As serial communicator|
|[wireshark]|As network packet analyzer|


 [vim-official]: <https://github.com/vim/vim>
 [tmux.conf]: <https://github.com/Kadiryanik/env-configs/blob/master/tmux/.tmux.conf>
 [bashrc]: <https://github.com/Kadiryanik/env-configs/blob/master/bash/.bashrc>
 [install.sh]: <https://github.com/Kadiryanik/env-configs/blob/master/bash/install.sh>
 [vim]: <https://github.com/Kadiryanik/env-configs#installation>
 [cscope]: <http://cscope.sourceforge.net/>
 [fzf]: <https://github.com/junegunn/fzf>
 [tmux]: <https://github.com/tmux/tmux>
 [minicom]: <https://wiki.emacinc.com/wiki/Getting_Started_With_Minicom>
 [wireshark]: <https://www.wireshark.org/>
