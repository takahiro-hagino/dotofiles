" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" colorscheme
NeoBundle 'tomasr/molokai'
" airline
NeoBundle 'bling/vim-airline.git'
" vom-scala
NeoBundle 'derekwyatt/vim-scala'
" clever-f
NeoBundle 'rhysd/clever-f.vim'
" bracket completion
" NeoBundle 'Raimondi/delimitMate'

" completion
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'Shougo/unite.vim'

call neobundle#end()

" for neosnipet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

" Enable neo complete
let g:neocomplete#enable_at_startup = 1

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/dotfiles/.neocon-snipets'

" Unite history/yank
let g:unite_source_history_yank_enable = 1

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Enable to syntax highlight
syntax on

" Copy to clip board with yank
set clipboard=unnamed

" Highlight search result
set hlsearch

" Ifnore letter case
set ignorecase

" Convert tab to bi-space
set expandtab
set tabstop=2
set shiftwidth=2

" Default set paste
set paste

" Enable to auto indent with return
set autoindent

" Enable to incremental search
set incsearch

" Show Line Numbers
set number

" For airline
set laststatus=2

" font
set guifont=Monaco:h15

" colorscheme
colorscheme molokai
