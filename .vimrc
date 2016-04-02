syntax on
set ignorecase
" set mouse=a
set paste
set nowrap
set expandtab
set autoindent
set shiftwidth=2
set tabstop=2
set hlsearch
set foldmethod=indent


" unfold all folds when opening files
au BufRead * normal zR

command! W :w
command! Wq :wq

set number
set numberwidth=5
"set cursorline
" set cursorcolumn
set backspace=indent,eol,start
let mapleader = ','

" make tab in normal mode go to next file, shfit tab previous

nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>

" normal mode space scrolls page
noremap <space> <C-f>

" insert mode: Ctrl-Z is undo
imap <C-Z> <Esc>ui
imap <tab> <C-p>

imap jj <Esc>

" make tab in visual mode indent, shift-tab dedent
vmap <tab> >gv
vmap <s-tab> <gv

set wildmenu
set wildmode=longest:list,full

hi CursorLine cterm=NONE ctermbg=grey ctermfg=NONE

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd InsertLeave * redraw!
execute pathogen#infect()

" only if ocaml is installed
set rtp^="/Users/tj/.opam/system/share/ocp-indent/vim"
set rtp+=/Users/tj/.opam/system/share/ocp-index/vim
