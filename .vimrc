execute pathogen#infect()
syntax on
set background=dark
colorscheme atom-dark-256

let python_highlight_all=1
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

hi CursorLineNr guifg=#050505
set number
set ruler
set expandtab
set tabstop=4
set incsearch
set cursorline
set clipboard=unnamed
set nohidden
set list listchars=tab:»·,trail:·
set backspace=indent,eol,start

" Highlight all search results
set hlsearch
hi Search   cterm=BOLD  ctermfg=NONE    ctermbg=DarkGrey

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>

" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>
