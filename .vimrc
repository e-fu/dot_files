call plug#begin()

"spacemacs
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'szw/vim-maximizer'

Plug 'jimmay5469/vim-spacemacs'
"git layer
Plug 'tpope/vim-fugitive'

"javascript layer
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'

"version-control layer
Plug 'airblade/vim-gitgutter'

"custom
Plug 'tpope/vim-sensible'
Plug 'elixir-lang/vim-elixir'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
" Themes
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'
Plug 'gosukiwi/vim-atom-dark'

Plug 'pbrisbin/vim-mkdir'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'

" Thoughtbot
Plug 'christoomey/vim-run-interactive'

call plug#end()

" spacemacs
let mapleader = "\<SPACE>"

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

"theme
syntax on
colorscheme onedark

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" some defaults
set nocompatible
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" custom
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

   " ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0
endif

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
