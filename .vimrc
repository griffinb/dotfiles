execute pathogen#infect()
filetype plugin indent on
syntax enable
colorscheme onedark

set laststatus=2
set statusline+=%F
set updatetime=250
set number
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set cursorline
set nohidden
set list listchars=tab:»·,trail:·
set backspace=indent,eol,start

set term=screen-256color
" Highlight all search results
set hlsearch
hi Search   cterm=BOLD  ctermfg=NONE    ctermbg=blue
hi IncSearch    cterm=BOLD  ctermfg=NONE    ctermbg=red

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>

" Some files need to have a tab width of 2:
autocmd FileType javascript,json,yaml,html setlocal tabstop=2
autocmd FileType javascript,json,yaml,html setlocal shiftwidth=2
" Display an error in .js files as well if the line grows beyond 79 chars.
autocmd BufRead,BufNewFile *.js :match ErrorMsg '\%>79v.\+'
autocmd BufRead,BufNewFile *.js :match ErrorMsg '\%>79v.\+'
" set javascript syntax highlighting for .json files
autocmd BufRead,BufNewFile *.json :setf javascript

" git settings
"
" For well-crafted git commit messages,
" limit the length of messages to 72 chars
autocmd FileType gitcommit :match ErrorMsg '\%>72v.\+'
autocmd FileType gitcommit set textwidth=72

" markdown settings
autocmd BufRead,BufNewFile *.md :set syntax=markdown


au FocusGained,BufEnter * :silent! checktime
au FocusLost,WinLeave * :silent! w

" Trim trailing whitespace:
function TrimWhiteSpace()
    " Don't strip whitespace on these filetypes
    if &ft =~ 'diff'
        return
    endif
    " Same thing for .t files (used for cram tests)
    if &ft =~ 'tads'
        return
    endif
    %s/\s*$//
    ''
endfunction

autocmd FileWritePre   * :call TrimWhiteSpace()
autocmd FileAppendPre  * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre    * :call TrimWhiteSpace()
