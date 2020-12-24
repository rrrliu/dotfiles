"Initialize plugins
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Turn on syntax highlighting
syntax enable

"For more typical backspace behavior (can delete chars not just typed)
set backspace=indent,eol,start

"Colors
colorscheme nord

"Change cursor for Mac OS X Terminal
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Make things clickable
set mouse=a

"Line numbers on left
set number
set relativenumber

"Status bar at bottom
set laststatus=2
"Bottom left
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
"Bottom right
set statusline+=%p%%
set statusline+=\ \|
set statusline+=\ %l:%c

"Tab magic (TODO: review)
set tabstop=8 softtabstop=2 expandtab shiftwidth=2 smarttab smartindent

"Jump and highlight words when searching, rm highlight double escaping
set incsearch
set hlsearch
nnoremap <silent> <esc><esc> :nohls<cr>

"Underline current line
set cursorline
highlight cursorline ctermbg=none cterm=underline

"Add line at 80 characters
set colorcolumn=80

"NERDTree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Function key shortcuts
nmap <F2> <Plug>(coc-rename)

"Ultisnips configuration
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
