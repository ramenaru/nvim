" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'karb94/neoscroll.nvim'
Plug 'wakatime/vim-wakatime'

" End plugin section
call plug#end()

" General Settings
syntax enable
set background=dark
colorscheme gruvbox

" Enable transparent background
augroup MyColors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
  autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none
  autocmd ColorScheme * highlight Folded ctermbg=none guibg=none
  autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
  autocmd ColorScheme * highlight SpecialKey ctermbg=none guibg=none
  autocmd ColorScheme * highlight VertSplit ctermbg=none guibg=none
  autocmd ColorScheme * highlight SignColumn ctermbg=none guibg=none
  autocmd ColorScheme * highlight EndOfBuffer ctermbg=none guibg=none
augroup END

" Enable NERDTree
map <C-n> :NERDTreeToggle<CR>

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Coc.nvim settings for autocompletion
" Use <Tab> and <Shift-Tab> to navigate through popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Line numbers
set number
set relativenumber

" Smooth scrolling
lua << EOF
  require('neoscroll').setup()
EOF

" Additional useful settings
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set wildmenu
set showcmd
set clipboard=unnamedplus
set mouse=a
set scrolloff=8
set sidescrolloff=8
set wrap

" Enable syntax highlighting
syntax enable
filetype plugin indent on



