set background=dark

"set synmaxcol=120

let itermenv=$ITERM_PROFILE

if itermenv == 'Copy of Default'
  set background=light
endif

set runtimepath+=~/dotfiles/vim

" Don't use vi settings
set nocompatible
set encoding=utf-8

" pathogen
call pathogen#infect('~/dotfiles/vim/bundle/')

" spell check
autocmd BufRead *.md setlocal spell spelllang=en_us

" column 80
if exists('+colorcolumn')
  set colorcolumn=80
endif

" Turn on line numbering. Turn it off with "set nonu" 
if exists('+rnu')
  set rnu
  au InsertEnter * :set nu
  au InsertLeave * :set rnu
  au FocusLost * :set nu
  au FocusGained * :set rnu
else
  set number
endif

" allow plugin, indent, etc
filetype off
filetype plugin indent on
set autoindent

" (Sometimes) case insensitive search
set ic
set smartcase

" Higlhight search
set hls

syntax enable

colorscheme solarized

" change solarized color with f5
call togglebg#map("<F5>")

set guifont=Source\ Code\ Pro:h14

" Allow jj to trigger ESC
imap jj <Esc>

" ;; toggles a ; at EOL (see http://stackoverflow.com/a/18157585/2405902)
nnoremap ;; :s/\v(.)$/\=submatch(1)==';' ? '' : submatch(1).';'<CR> :noh <CR>

" Open TDL file
nnoremap tdl :vsp ~/tdl.md <CR>

" Map leader to ,
let mapleader = ","

" Use spaces instead of tab
set expandtab
set tabstop=2
set shiftwidth=2 
set softtabstop=2

" Allow backspaces
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine
if has('mouse')
  set mouse=a
endif

" Get rid of bell
set noerrorbells
set visualbell
set t_vb=

" word wrap
set wrap
set linebreak
set nolist  " list disables linebreak
set lbr " Wrap text instead of being on one line

" Don't start with folds
set foldlevelstart=99
set foldlevel=99

" compile commands
map ,g :!grunt
map ,m :!make
map ,c :!make veryclean

" Marked
map ,r :!open -a "Marked 2" % <CR>

" if md or txt file, set type markdown
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.Rmd set filetype=markdown
au BufRead,BufNewFile *.markdown set filetype=markdown

" if json, set type javascript
au BufRead,BufNewFile *.json set filetype=javascript

" Wordcount
map ,wc :w !wc <CR>

" paste, no paste
nnoremap <leader>z :set invpaste paste?<CR>
set pastetoggle=<leader>z
set showmode

" copy paste
nmap <C-A-V> "+gP
imap <C-A-V> <ESC><C-A-V>i
vmap <C-A-C> "+y 

if has("gui_running")
    set guioptions=egmrt
    set lines=40
endif

" switch window
map gw <C-w>w
map GW <C-w>W

" switch tab
map GT gT

" autocomplete mode
set wildmode=list:longest,list:full

" Tabular (from http://vimcasts.org/episodes/aligning-text-with-tabular-vim/)
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Limelight
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Relative number yank
nmap [p :<C-U>exe '+' . (v:count1) . 't.'<CR>

nmap ss :source ~/.vimrc<CR>

" Add argument (can be negative, default 1) to global variable i.
" Return value of i before the change.
" example: :let i = 1 | %s/abc/\='xyz_' . Inc()/g
function Inc(...)
  let result = g:i
  let g:i += a:0 > 0 ? a:1 : 1
  return result
endfunction
