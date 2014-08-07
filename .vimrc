ab #! #!/usr/bin


au BufEnter *.arr set expandtab
au BufEnter *.arr set shiftwidth=2
au BufEnter *.arr set softtabstop=2
au BufEnter *.arr set syntax=pyret
au BufEnter *.py set expandtab
au BufEnter *.py set shiftwidth=4
au BufEnter *.py set softtabstop=4
au BufEnter *.txt set expandtab
au BufEnter *.txt set shiftwidth=4
au BufEnter *.txt set softtabstop=4

"colorscheme evening

let java_comment_strings=1
let java_highlight_all=1
let java_highlight_debug=1
let java_highlight_functions="style"
let java_highlight_java_lang_ids=1
let java_ignore_javadoc=1
let java_mark_braces_in_paens_as_errors=1
let java_minlines = 150

noremap ; :
noremap <C-Space> <Esc>
noremap <Space> i

set autoindent
set cinoptions+=j1
set copyindent
set hlsearch
set mouse=a
set nobackup
set noexpandtab
set noswapfile
set nu
set number
set shiftwidth=4
set si
set smartcase
set smartindent
set tabstop=4
set virtualedit=onemore
syntax on
