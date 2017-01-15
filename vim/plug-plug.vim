" Install vim-plug if we don't arlready have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let nvim = has('nvim')

function! IncludeIf(cond, ...)
    let opts = get(a:000, 0, {})
    return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/plugged')
"============ Experimental ===============
"Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-obsession'
Plug 'amiorin/vim-project'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/Conque-Shell', IncludeIf(!nvim)
Plug 'mihaifm/vimpanel'
Plug 'wesleyche/SrcExpl'
Plug 'scrooloose/nerdcommenter'
Plug 'shougo/unite.vim'

Plug 'hynek/vim-python-pep8-indent'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mxw/vim-jsx'

"take a closer look
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'mileszs/ack.vim'
"=========================================
Plug 'tpope/vim-fugitive' " GIT wrapper
Plug 'flazz/vim-colorschemes' " Collection of vim colorschemes
Plug 'bogado/file-line' " Open file via <file-path>:<line number>
Plug 'scrooloose/syntastic' " Syntax checker
Plug 'junegunn/fzf' " Fuzzy finder
Plug 'scrooloose/nerdtree' " Files navigation
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'thisivan/vim-bufexplorer' " Buffers explorer
Plug 'tpope/vim-surround' " Edit
Plug 'vim-airline/vim-airline' " Airline bar
Plug 'vim-airline/vim-airline-themes' " Themes for airline bar
Plug 'elzr/vim-json' " json syntax support
Plug 'rust-lang/rust.vim' " rust syntax support
call plug#end()
