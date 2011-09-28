syntax on
set nu
set tabstop=4
set shiftwidth=4
set autoindent
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
let php_sql_query=1
let php_htmlInStrings=1
colorscheme 256-jungle

" Press Space to turn off highlighting and clear any message already displayed.
:noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Set automatic filetype detection to on
 filetype on


" Ctrl-P toggles paste mode
set pastetoggle=<C-P>
