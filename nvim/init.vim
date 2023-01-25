set clipboard+=unnamedplus

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
" number of undo saved
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    " Plug 'chrisbra/csv.vim'
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'
call plug#end()

" csv 
" autocmd BufRead ,BufWritePost *.csv :%ArrangeColumn!
" autocmd BufWritePre *.csv :%UnArrangeColumn
