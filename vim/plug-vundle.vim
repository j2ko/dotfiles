"-------------------------------------
" Plugins for Vundle
"-------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"============ Experimental ===============
"Plugin 'jeaye/color_coded'
"Plugin 'wting/rust.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'amiorin/vim-project'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bogado/file-line'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'tpope/vim-obsession'
Plugin 'mihaifm/vimpanel'
Plugin 'wesleyche/SrcExpl'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'shougo/unite.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tacahiroy/ctrlp-funky'
"=========================================
"Files navigation
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'

"Buffers
Plugin 'thisivan/vim-bufexplorer'

"Edit
Plugin 'tpope/vim-surround'

"GUI
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Syntax
Plugin 'kelan/gyp.vim'
Plugin 'elzr/vim-json'
Plugin 'rust-lang/rust.vim'
Plugin 'mattn/emmet-vim'

call vundle#end()
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype indent on
filetype on

