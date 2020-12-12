# Vim Configuration
This repository contains my vim configuration which has following plugins.
| Plugin | Description |
| ------ | ------ |
|VundleVim/Vundle.vim|Plugin manager|
|preservim/nerdtree|Tree Explorer|
|mbbill/undotree|Showing undo tree|
|ctrlpvim/ctrlp.vim|CtrlP file search|
|junegunn/fzf|Fuzzy file, buffer, mru, tag, etc finder|
|junegunn/fzf.vim|Fuzzy file, buffer, mru, tag, etc finder|
|rking/ag.vim|For faster search|
|thaerkh/vim-workspace|Manage sessions|
|Valloric/YouCompleteMe|Auto completer|
|airblade/vim-gitgutter|Shows a git diff in the sign column|
|scrooloose/syntastic|Awesome syntax checker|
|morhetz/gruvbox|For colorscheme|
|vim-airline/vim-airline|Status bar|
|vim-airline/vim-airline-themes|Status bar themes|

### Installation
Type the following commands for installing the packages, copying and creating files/directories. 
```sh
    $ cd vim-config
    $ ./install.sh
    $ vim --version
```
Make sure the vim version is higher than **8**. You can check *vim-version.txt* file for my vim version. 
Also there is a binary **vim** which installed by *ubuntu 18.04 x64*. 
You can get the latest version with following commands. Also you can get and compile latest version from source code of [vim](https://github.com/vim/vim).
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
