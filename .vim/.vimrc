execute pathogen#infect()
syntax enable
set background=dark
colorscheme herald 
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

let python_highlight_all=1

" set colorcolumn=80
" set nofoldenable    " disable folding
set laststatus=2
set statusline+=%F
set updatetime=250
set relativenumber

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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
hi Search   cterm=BOLD  ctermfg=NONE    ctermbg=white
hi IncSearch    cterm=BOLD  ctermfg=NONE    ctermbg=red

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>

" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>

