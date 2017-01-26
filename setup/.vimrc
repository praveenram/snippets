set nocompatible              " be iMproved, require
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'easymotion/vim-easymotion'

Plugin 'ervandew/supertab'

Plugin 'Shougo/vimproc.vim'

Plugin 'klen/python-mode'

Plugin 'elzr/vim-json'

Plugin 'wincent/Command-T'

Plugin 'mbbill/undotree'

Plugin 'mrotaru/vim-status-quo'

Plugin 'ctags.vim--Johnson'

Plugin 'tpope/vim-rails'

Plugin 'flazz/vim-colorschemes'

Plugin 'ap/vim-css-color'

Plugin 'yggdroot/indentline'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    " Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    " Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Avoid a name conflict with L9
    " Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
set term=xterm-256color

" Put your non-Plugin stuff after this line
syntax on
set background=light
