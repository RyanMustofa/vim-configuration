set nocompatible              " required
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Plugin that haven't been added:
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'morhetz/gruvbox'
" Plugin 'sickill/vim-monokai'
" Plugin 'arcticicestudio/nord-vim'
Plugin 'dense-analysis/ale'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/yajs.vim'
" Plugin 'tomasr/molokai'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'shougo/neocomplcache.vim'
Plugin 'preservim/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'Yggdroot/indentLine'
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/syntastic'
Plugin 'turbio/bracey.vim'
"Plugin 'jaxbot/browserlink.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required:q

set t_Co=256
set background=dark
colorscheme gruvbox


"Nerdtree configuration
map <C-n> :NERDTreeToggle<CR>
map <C-o> :Prettier<CR>


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


set encoding=utf-8
syntax enable

set nocompatible
set noswapfile
set nowrap
set number
set incsearch
set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set splitbelow
set splitright

 autocmd FileType vue syntax sync fromstart
 autocmd FileType html setlocal sw=2 sts=2
 autocmd BufRead,BufNewFile *.svelte setlocal ft=html
 autocmd BufNewFile,BufRead *.vue set ft=vue
 autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
 autocmd QuickFixCmdPost *grep* cwindow
 set runtimepath^=~/.vim/bundle/ctrlp.vim
 let g:prettier#autoformat = 0

let g:polyglot_disabled = ['css']

"let g:neocomplcache_enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" In ~/.vim/ftplugin/javascript.vim, or somewhere similar.
"
" " Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
"
"" Equivalent to the above.
let b:ale_linters = {'javascript': ['eslint']}"

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

Plugin 'wakatime/vim-wakatime'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
"" Align line-wise comment delimiters flush left instead of following code
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
"" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"
"" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1"
" "
" "
" "

