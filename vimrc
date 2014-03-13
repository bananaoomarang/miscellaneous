" TPope's pathogen
execute pathogen#infect()

filetype plugin indent on
syntax on
set nu
set shiftwidth=4
set incsearch
set ofu=syntaxcomplete#Complete
set linebreak           " Wrap breaks lines at word boundaries.
set nolist              " Control TAB and EOL display
set textwidth=0         " Disable auto line breaks.
set wrapmargin=0        " Stop auto insertion of EOL.
set showbreak=::        " Indicate wrapped lines.

" Set theme
colors Tomorrow-Night

" custom abbreviations
abbr sqaure square

" try to get GLSL files to work properly... It's a no go still.
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 

" .fountain is a screenplay markdown language, no need to make my own!
au BufRead,BufNewFile *.fountain set filetype=fountain

" syntax checking for cpp
let g:syntastic_cpp_check_header = 1

" map F keys to useful poops

" clear and look at android log
map <F5> :! bash debug.sh

" Does what it says on the tin
map <F1> :NERDTreeToggle

" always uses spaces instead of tab characters
set expandtab

" Auto-delete fugitive buffers when their gone
autocmd BufReadPost fugitive://* set bufhidden=delete

" Adds the git branch to the status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P:q

" Always show dat statusline
set laststatus=2

" Set statusline color
hi StatusLine ctermbg=blue ctermfg=0

au InsertEnter * hi StatusLine term=reverse ctermbg=red  ctermfg=0
au InsertLeave * hi StatusLine term=reverse ctermbg=blue ctermfg=0

" Change behaviour so up and down move between the lines of text on screen,
" not necessarily actual lines of the text file
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" Enable persistent undo
set undodir=~/.vim/undo
set undofile
