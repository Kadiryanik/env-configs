# Vim Configuration
This repository contains my vim configuration which has following plugins.
| Plugin | Description |
| ------ | ------ |
|VundleVim/Vundle.vim|Plugin manager|
|preservim/nerdtree|Tree Explorer|
|mbbill/undotree|Showing undo tree|
|ctrlpvim/ctrlp.vim|Fuzzy file, buffer, mru, tag, etc finder|
|rking/ag.vim|For faster search|
|thaerkh/vim-workspace|Manage sessions|
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
You can try it or you can get and compile latest version via [vim](https://github.com/vim/vim).
Run vim and type following command for installing all plugins after vim setup is completed.
```sh
    :PluginInstall
```
After that you need to reopen vim, that's it. Your configuration is ready for use.
You can check and modify **~/.vimrc** file for more details. 
