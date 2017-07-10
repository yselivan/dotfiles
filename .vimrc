"
"
" Do not clear the screen after exit
" 
" set t_ti= t_te=
"
"
" SPACING
"
" Width of the TAB character (ts)
set tabstop=8
"
" Expand TAB to SPACEs
set expandtab
"
" Amounts of spaces addred or removed when indentation commands are used 
set shiftwidth=4
"
" Finds the amount of spaces to be inserted
set softtabstop=4
"
"
" Shortcut to rapidly toggle 
nmap <leader>l :set list!<CR>
nmap <leader>n :set nu!<CR>
nmap <leader>c :noh<CR>

" Insert customized TAB and EOL symbols
set listchars=tab:▸\ ,eol:¬

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=light
colorscheme solarized

" Damian Conway's plugins
"
"runtime plugin/dragvisuals.vim          
vmap  <expr>  <LEFT>   DVB_Drag('left') 
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down') 
vmap  <expr>  <UP>     DVB_Drag('up')   
vmap  <expr>  D        DVB_Duplicate()  

let g:DVB_TrimWS = 1                   

set textwidth=0
set formatoptions=cq
set wrapmargin=0
set colorcolumn=80

set hlsearch
set incsearch
set smartcase

"
" Turn off folding in vimdiff
"
if &diff                                 " only for diff mode/vimdiff
      set diffopt=filler,context:1000000 " filler is default and inserts empty lines for sync
endif
