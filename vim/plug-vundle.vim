"-------------------------------------
" Plugins for Vundle
"-------------------------------------
"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'jeaye/color_coded'
Plugin 'gmarik/Vundle.vim'
"Plugin 'wting/rust.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'amiorin/vim-project'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'thisivan/vim-bufexplorer'
Plugin 'bogado/file-line'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'tpope/vim-obsession'
Plugin 'mihaifm/vimpanel'
Plugin 'scrooloose/nerdtree'
Plugin 'wesleyche/SrcExpl'
Plugin 'scrooloose/nerdcommenter'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kelan/gyp.vim'
Plugin 'elzr/vim-json'
Plugin 'shougo/unite.vim'
Plugin 'tpope/vim-surround'
Plugin 'hynek/vim-python-pep8-indent'
call vundle#end()
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype indent on
filetype on


