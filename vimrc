" TPope's pathogen
execute pathogen#infect()

filetype plugin indent on
syntax on
set nu
set shiftwidth=2
set incsearch
set ofu=syntaxcomplete#Complete
set linebreak           " Wrap breaks lines at word boundaries.
set nolist              " Control TAB and EOL display
set textwidth=0         " Disable auto line breaks.
set wrapmargin=0        " Stop auto insertion of EOL.
set showbreak=::        " Indicate wrapped lines.
set expandtab           " Always use spaces never tab chars
set laststatus=2
set timeoutlen=200
set softtabstop=2
set tabstop=2

colorscheme anotherdark

" Persistent undo
set undodir=/home/milo/.vim/undo
set undofile

let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'mkd' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

let g:ycm_autoclose_preview_window_after_insertion = 1

let g:syntastic_javascript_checkers = ['eslint']

let g:ycm_key_list_select_completion = []
let g:UltiSnipsExpandTrigger="<tab>"
