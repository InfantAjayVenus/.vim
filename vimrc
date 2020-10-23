let mapleader=";"
set autoread
set tabstop=2       " The width of a TAB is "set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width o 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set termguicolors   " Sets terminal colors


" This section installs vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" End of Section

" This section list a set of plugins installed using vim-plug

call plug#begin()
Plug 'ryanoasis/vim-devicons' " Icon plugin
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" End of Section


" Theme config Section

colorscheme codedark
set background=dark
set encoding=UTF-8
" End of Section

" Nerd Tree config Section

map <C-b> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heave feature too. default: normal
let g:NERDTreeGitStatusShowClean = 1 " default: 0
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" End of Section 

" Completion Config

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" End of Section
