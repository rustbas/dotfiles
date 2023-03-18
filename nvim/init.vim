""""""""""""""""""""""""
" Leader bind to space "
""""""""""""""""""""""""

nnoremap <space> <nop>
let mapleader = "\<space>"


""""""""""""""""""""""""
" CORE FILE NAVIGATION "
""""""""""""""""""""""""

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3

" ╭──────────────────╮
" │ BUFFERS BINDINGS │
" ╰──────────────────╯

nnoremap <leader>bl :bnext<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bh :bprevious<CR>

" ╭────────╮
" │ SYNTAX │
" ╰────────╯

syntax on
filetype plugin indent on


"""""""""""""""""""
" TABS NAVIGATION " 
"""""""""""""""""""

" Temporarily turn off

" better use gt&gT hotkeys
" nnoremap <leader><C-l> :tabprevious<CR>
" nnoremap <leader><C-h> :tabnext<CR>
nnoremap <leader><C-w> :tabclose<CR>
nnoremap <leader><C-n> :tabnew<CR>

""""""""""""""
" UNDO-TREES "
""""""""""""""

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
" number of undo saved
set undolevels=10000
set undoreload=10000


"""""""""""""""
" SOME CONFIG " 
"""""""""""""""

" set line number
set number
set relativenumber
set clipboard+=unnamedplus
" split hor-ly like in tmux config
nnoremap <c-w>h <c-w>s

""""""""""""""""
" TABS INDENTS "
""""""""""""""""

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" ╭─────────────────╮
" │ MARK FOR CONFIG │
" ╰─────────────────╯

nnoremap <leader><leader> /<++><CR>c4l

"""""""""""""""""""
" PLUGINS INSTALL " 
"""""""""""""""""""

call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    "Plug 'chrisbra/csv.vim'
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'
    Plug 'easymotion/vim-easymotion'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'wellle/targets.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
    Plug 'LudoPinelli/comment-box.nvim'
    "Plug 'snakemake/snakefmt'
    Plug 'ibab/vim-snakemake'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'PreciousChicken/vim-groff-viewer'

    " LSP
    "Plug 'williamboman/mason.nvim'
    "Plug 'williamboman/mason-lspconfig.nvim'
    "Plug 'neovim/nvim-lspconfig'
call plug#end()


""""""""""""""""""""
" PLUGIN'S CONFIGS " 
""""""""""""""""""""

" ╭─────────────────────────────╮
" │ HASKELL SYNTAX HIGHLIGHTING │
" ╰─────────────────────────────╯

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

""""""""""""""""""""""
" NEOVIM COLORSCHEME "
""""""""""""""""""""""

colorscheme gruvbox

"""""""""""""""""""""""""
" LIGHTLINE COLORSCHEME "
"""""""""""""""""""""""""

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" ╭─────────────────────╮
" │ COMMENT-BOX BINDING │
" ╰─────────────────────╯

" box
nnoremap <Leader>cb <Cmd>lua require('comment-box').acbox()<CR>
vnoremap <Leader>cb <Cmd>lua require('comment-box').acbox()<CR>

" line
nnoremap <Leader>cl <Cmd>lua require('comment-box').cline(2)<CR>
inoremap <M-l> <Cmd>lua require('comment-box').cline(2)<CR>

"""""""""""""""""""""""
" EASYMOTION BINDINGS "
"""""""""""""""""""""""

map <Leader> <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" Move to line (L -> l, because Shift+l not so ergonomic)
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" csv 
autocmd BufRead ,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn

" ╭───────────────╮
" │ MAKE BINDINGS │
" ╰───────────────╯

nnoremap <leader>m :make<CR>

" ╭─────────────╮
" │ HIGHLIGHING │
" ╰─────────────╯

nnoremap <leader>h :nohl<CR>

" ╭────────────────╮
" │ GROFF SETTINGS │
" ╰────────────────╯

let groffviewer_default="zathura"

let groffviewer_options="-T pdf"


" ╭──────────────╮
" │ TRANSPARENCY │
" ╰──────────────╯

hi Normal ctermbg=NONE

