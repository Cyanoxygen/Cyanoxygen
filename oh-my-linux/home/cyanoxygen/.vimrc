" Cyanoxygen's VIM file
" ===========================
if has("termguicolors")
    " fix bug for vim
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
endif

"unlet skip_defaults_vim
"source $VIMRUNTIME/defaults.vim

" General Settings
" ===========================

set mouse=a

set viminfo='10,<100,:100,%,n~/.vim/.viminfo

set number
" set termguicolors

" PlugInstaller settings
" ===========================

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-markdown'
Plug 'gryf/wombat256grf'     
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'junegunn/goyo.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'sainnhe/sonokai'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
call plug#end()

" Airline settings
" ===========================

let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

" Sonokai theme
" ===========================
 let g:sonokai_style = 'shusia'
 let g:sonokai_enable_italic = 1
 let g:sonokai_disable_italic_comment = 0

 colorscheme wombat256grf

" Tab settings
" ===========================
set switchbuf=usetab,newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>
set showtabline=2

" NERDTree settings
" ==========================
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '\'
" autocmd vimenter * NERDTree

" Signify settings
" ===========================

let g:signify_sign_add    = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete = '•'

let g:signify_sign_show_count = 0 " Don’t show the number of deleted lines.

