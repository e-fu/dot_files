if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

"spacemacs
Plug 'jimmay5469/vim-spacemacs'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'szw/vim-maximizer'
Plug 'pbrisbin/vim-mkdir'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'

" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'powerman/vim-plugin-AnsiEsc'

"elm
Plug 'elmcast/elm-vim'

" neovim
Plug 'shougo/deoplete.nvim'

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
Plug 'bling/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ap/vim-css-color'

"testing
Plug 'janko-m/vim-test'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'gosukiwi/vim-atom-dark'

" Thoughtbot
Plug 'christoomey/vim-run-interactive'

" dash
Plug 'rizzatti/dash.vim'

call plug#end()

" spacemacs
let mapleader = "\<SPACE>"

" deoplete
let g:deoplete#enable_at_startup = 1

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
"VIM Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set guifont=Inconsolata:h14.00 "best font ever
"ignored directories which command-t will use too. Make sure _build is in here
set wildignore=*.o,*.obj,.git,node_modules/**,bower_components/**,**/node_modules/**,_build/**,deps/**

"elm (needs elm-oracle, elm-test and elm)
let g:elm_format_autosave = 1

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
" nnoremap <Left> :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up> :echoe "Use k"<CR>
" nnoremap <Down> :echoe "Use j"<CR>

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
let g:elm_syntastic_show_warnings = 1

set guifont=Inconsolata:h14.00 "best font ever
"ignored directories which command-t will use too. Make sure _build is in here
set wildignore=*.o,*.obj,.git,node_modules/**,bower_components/**,**/node_modules/**,_build/**,deps/**

"run tests right from vim - super helpful
"click space twice :)
" map <leader><space> :!mix test<CR>
map <leader><space> :!mix test %<CR>

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
 
