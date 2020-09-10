set rtp+=/usr/local/opt/fzf
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
  " MAIN
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'bruno-/vim-husk'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  " NAVIGATION
  Plug 'rking/ag.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'dockyard/vim-easydir'
  Plug 'vim-scripts/tComment'
  Plug 'elzr/vim-json'


  Plug 'cocopon/iceberg.vim'
  Plug 'Shougo/neocomplete'
  Plug 'pangloss/vim-javascript'

  Plug 'tpope/vim-commentary'
  Plug 'janko/vim-test'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'ThePrimeagen/vim-be-good'
call plug#end()

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

:set number

execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
colo iceberg

if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

syntax on

set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems
set synmaxcol=200
set number
set ts=2
set sw=2
set autoindent
set smartindent
set expandtab
set ignorecase
set hlsearch
set splitbelow " new splits are down
set splitright " new vsplits are to the right
set smartcase
set incsearch
set laststatus=2
set visualbell
set showcmd
set pastetoggle=
set iminsert=0
set linebreak
set completeopt=longest,menuone
set wildmenu
set noerrorbells
set novisualbell
set t_vb=
set t_ut=
set tm=500
set nobackup
set nowb
set noswapfile
set timeoutlen=500
set langmenu=en_US.UTF-8
set encoding=utf-8
set encoding=utf8
set fileencoding=utf-8

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:airline_powerline_fonts = 1
set guifont=DroidSansMono_Nerd_Font:h11

set autowrite
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

:command NE NERDTree

autocmd FileType go nmap <leader>t  <Plug>(go-test)

let NERDTreeQuitOnOpen = 1

let g:neocomplete#enable_at_startup = 1
set completeopt-=preview
