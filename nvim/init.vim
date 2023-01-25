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


"""""""""""""""""""
" PLUGINS INSTALL " 
"""""""""""""""""""

call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    " Plug 'chrisbra/csv.vim'
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
call plug#end()


""""""""""""""""""""
" PLUGIN'S CONFIGS " 
""""""""""""""""""""


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

nnoremap <Leader>cb <Cmd>lua require('comment-box').acbox()<CR>
vnoremap <Leader>cb <Cmd>lua require('comment-box').acbox()<CR>


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
" autocmd BufRead ,BufWritePost *.csv :%ArrangeColumn!
" autocmd BufWritePre *.csv :%UnArrangeColumn
