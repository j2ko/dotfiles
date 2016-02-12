" Install vim-plug if we don't arlready have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    call mkdir("~/.vim/plugged/", "p")
    call mkdir("~/.vim/autoload/", "p")
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

"Plun 'wting/rust.vim'
Plug 'rust-lang/rust.vim'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-fugitive'
Plug 'amiorin/vim-project'
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'thisivan/vim-bufexplorer'
Plug 'bogado/file-line'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/Conque-Shell'
Plug 'tpope/vim-obsession'
Plug 'mihaifm/vimpanel'
Plug 'scrooloose/nerdtree'
Plug 'wesleyche/SrcExpl'
Plug 'scrooloose/nerdcommenter'
Plug 'git://git.wincent.com/command-t.git'
Plug 'mattn/emmet-vim'
Plug 'rking/ag.vim'
"Plun 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'kelan/gyp.vim'
Plug 'elzr/vim-json'
Plug 'shougo/unite.vim'
Plug 'tpope/vim-surround'
Plug 'hynek/vim-python-pep8-indent'

filetype plugin indent on 
call plug#end()
