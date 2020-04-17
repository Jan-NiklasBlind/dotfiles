syntax on

" nnoremap <up> <nop>
" nnoremap <down> <nop>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" nnoremap <F5> <esc> :w <cr> :!python % <cr>
" nnoremap <F6> <esc> :w <cr> :! docker build -t turtlebot_image . <cr>
" nnoremap <F7> <esc> :w <cr> :!./% <cr>
nnoremap <F8> <esc> :w <cr> :!pandoc % -o test.pdf <cr> :!evince test.pdf <cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

set smartcase
set incsearch
set hlsearch
set shortmess+=I
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set noswapfile
set number
set encoding=utf-8

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-plug'
Plug 'brennier/quicktex'
Plug 'lervag/vimtex'
Plug 'raimondi/delimitmate'
Plug 'joom/vim-commentary'
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
call plug#end()
filetype plugin on

colorscheme gruvbox

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
  " let base16colorspace=256  " Access colors present in 256 colorspace
  " Allow color schemes to do bright colors without forcing bold.
  set t_Co=256
  " colorscheme desert
  " colorscheme Tomorrow-Night
  let g:gruvbox_undercurl = 1
  let g:gruvbox_termcolors = 256
  let g:gruvbox_constrast_dark='soft'
  let g:gruvbox_underline=1
  " let g:gruvbox_color_column='red'
  set background=dark
endif

augroup line_return
  au!
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" let g:vimtex_view_method = 'mupdf'
" let g:vimtex_view_general_viewer = 'evince' 
let g:vimtex_view_general_viewer = 'zathura' 
let g:tex_flavor = 'latex'
