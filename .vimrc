call pathogen#infect()
call pathogen#helptags()

syntax on
set nu
set tabstop=2
set shiftwidth=2
set autoindent
set errorformat=%m\ in\ %f\ on\ line\ %l
colorscheme 256-jungle

" Press Space to turn off highlighting and clear any message already displayed.
:noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Set automatic filetype detection to on
 filetype on

" Set nerdtree toggle key
nmap <silent> <c-n> :NERDTreeToggle<CR>

" Ctrl-P toggles paste mode
set pastetoggle=<C-P>
