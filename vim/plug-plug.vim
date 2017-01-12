" Install vim-plug if we don't arlready have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    call mkdir("~/.vim/plugged/", "p")
    call mkdir("~/.vim/autoload/", "p")
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

"======== Considered for removal =========
"Plug 'jeaye/color_coded'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tacahiroy/ctrlp-funky'
"Plug 'wincent/command-t'

"============ Experimental ===============
"Plug 'wting/rust.vim'
"Plug 'Valloric/YouCompleteMe'

Plug 'scrooloose/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-vinegar'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-fugitive'
Plug 'amiorin/vim-project'
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'bogado/file-line'
Plug 'majutsushi/tagbar'
if !has('nvim')
    Plug 'vim-scripts/Conque-Shell'
endif
Plug 'tpope/vim-obsession'
Plug 'mihaifm/vimpanel'
Plug 'wesleyche/SrcExpl'
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
Plug 'shougo/unite.vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'octol/vim-cpp-enhanced-highlight'
"=========================================

" Fuzzy finder
Plug 'junegunn/fzf'
"Files navigation
Plug 'scrooloose/nerdtree'

"Buffers
Plug 'thisivan/vim-bufexplorer'

"Edit
Plug 'tpope/vim-surround'

"GUI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Syntax
Plug 'elzr/vim-json'
Plug 'rust-lang/rust.vim'

filetype plugin indent on 
call plug#end()
