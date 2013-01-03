set runtimepath+=~/dotfiles/vim

" spell check
autocmd BufRead *.md setlocal spell spelllang=en_us

" column 80
:set colorcolumn=80

" pathogen
call pathogen#infect('~/dotfiles/vim/bundle/')

" Don't use vi settings
set nocompatible
set encoding=utf-8

" Turn on line numbering. Turn it off with "set nonu" 
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" allow plugin, indent, etc
filetype off
filetype plugin indent on
set autoindent

" (Sometimes) case insensitive search
set ic
set smartcase

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default
" colorscheme molokai

syntax enable
set background=dark
"set background=light
colorscheme solarized
call togglebg#map("<F5>")

set guifont=Menlo:h14

" Allow jj to trigger ESC
imap jj <Esc>

" Map leader to ,
let mapleader = ","

" Use spaces instead of tab
set expandtab
set tabstop=2
set shiftwidth=2 
set softtabstop=2

" Allow backspaces
set backspace=indent,eol,start

" Command to check ~/.vim/skel/ for a tmpl.* file when opening a new file
autocmd! BufNewFile * silent! 0r ~/dotfiles/vim/skel/tmpl.%:e

" In many terminal emulators the mouse works just fine, thus enable it.
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

" Don't start with folds (uncomment if you're a fold hater)
set foldlevelstart=99
set foldlevel=99

" compile commands
map ,g :!grunt
map ,m :!make <CR>
map ,c :!grunt <CR>

" LaTeX commands
map ,p :!pdflatex -halt-on-error %:p <CR>
map ,b :!bibtex %:p:r.aux <CR>
map ,v :!open %<.pdf <CR> <CR>
" map ,v :!if [ "$OSTYPE" == "darwin12" ]; then open %<.pdf; else gnome-open %<.pdf; fi <CR> <CR>

" Markdown commands
map ,mv :!open %<.html <CR> 
map ,md :!markdown %:p > %<.html <CR> 
au BufRead,BufNewFile *.txt set filetype=markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Wordcount
map ,wc :!wc % <CR>

" Break sentences (sub .\s for .\n)
map ,bs :s/\. /\.\r/g <CR>

" copy paste
nmap <C-A-V> "+gP
imap <C-A-V> <ESC><C-A-V>i
vmap <C-A-C> "+y 

" read date
map ,rd :r !date <CR>
map ,d :r !pwd <CR>

if has("gui_running")
    set guioptions=egmrt
    set lines=40
endif

" resize current buffer by +/- 5 
nnoremap <silent> <C-w><C-h> :vertical resize -5<cr>
nnoremap <silent> <C-w><C-j> :resize +5<cr>
nnoremap <silent> <C-w><C-k> :resize -5<cr>
nnoremap <silent> <C-w><C-l> :vertical resize +5<cr>

map gw <C-w>w
map GW <C-w>W

map GT gT

" autocomplete mode
set wildmode=list:longest,list:full

" numbers toggle
nnoremap <F6> :NumbersToggle<CR>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
