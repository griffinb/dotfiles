execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

highlight Normal ctermbg=none
highlight NonText ctermbg=none

nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

let python_highlight_all=1

set laststatus=2
set statusline+=%F
set updatetime=250
set relativenumber

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

autocmd BufWritePost *.py call Flake8()
filetype plugin on
