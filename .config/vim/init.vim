if ! filereadable(expand('~/.vim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !bash -c "$INSTALLER nodejs" " needed for CoC installation
	silent !mkdir -p ~/.vim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.vim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'Yohannfra/Vim-Epitech'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" colorschemes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jcherven/jummidark.vim'
call plug#end()

" Colors :
    colorscheme jummidark
    let g:airline_theme='angr'

" Buffers
nnoremap <silent> <leader>1 :buffer1<CR>
nnoremap <silent> <leader>2 :buffer2<CR>
nnoremap <silent> <leader>3 :buffer3<CR>
nnoremap <silent> <leader>4 :buffer4<CR>
nnoremap <silent> <leader>5 :buffer5<CR>
nnoremap <silent> <leader>6 :buffer6<CR>
nnoremap <silent> <leader>7 :buffer7<CR>
nnoremap <silent> <leader>8 :buffer8<CR>
nnoremap <silent> <leader>9 :buffer9<CR>
nnoremap <silent> <leader>0 :buffer0<CR>

nnoremap <leader>z :vnew<CR>e .<CR>

nnoremap <silent><leader><BS>1 :bdelete 1<CR>
nnoremap <silent><leader><BS>2 :bdelete 2<CR>
nnoremap <silent><leader><BS>3 :bdelete 3<CR>
nnoremap <silent><leader><BS>4 :bdelete 4<CR>
nnoremap <silent><leader><BS>5 :bdelete 5<CR>
nnoremap <silent><leader><BS>6 :bdelete 6<CR>
nnoremap <silent><leader><BS>7 :bdelete 7<CR>
nnoremap <silent><leader><BS>8 :bdelete 8<CR>
nnoremap <silent><leader><BS>9 :bdelete 9<CR>
nnoremap <silent><leader><BS>0 :bdelete 0<CR>


" Remaps :
	nnoremap c "_c
    nnoremap <leader>x          :tabnew .<CR>e .<CR>
    nnoremap <leader>c          :tabn<CR>
    nnoremap <leader>x          :tabp<CR>
    nnoremap <leader>h          :wincmd h<CR>
    nnoremap <leader>j          :wincmd j<CR>
    nnoremap <leader>k          :wincmd k<CR>
    nnoremap <leader>l          :wincmd l<CR>
    nnoremap <leader>m          :NERDTreeToggle<CR>
    nnoremap <leader>u          :UndotreeShow<CR>
    nnoremap <leader>pv         :wincmd v<bar> :Ex <CR>
    nnoremap <silent> <Leader>= :vertical resize +5<CR>
    nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Epitech Header :
    nnoremap <silent> <leader>e :Header<CR>

" Column at 80 characters :
	setlocal colorcolumn=80
    highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader="\\"
set nocompatible
set splitbelow splitright
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
filetype plugin on
syntax on
set encoding=utf-8
set noerrorbells
set nowrap
set wildmode=longest,list,full
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cmdheight=2
set shortmess+=c
set updatetime=50
set bg=dark
set termguicolors
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set hidden
set nowritebackup
set cmdheight=2
set shortmess+=c

" CoC stuff
fun! GoCoc()
    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <buffer> <silent><expr> <C-space> coc#refresh()
" GoTo code navigation.
    nmap <silent> <leader>d  :call <SID>show_documentation()<>
    nmap <silent> <leader>s  :call clangd.switchSourceHeader
	nmap <leader>gd <Plug>(coc-definition)
	nmap <leader>gy <Plug>(coc-type-definition)
	nmap <leader>gi <Plug>(coc-implementation)
	nmap <leader>gr <Plug>(coc-references)
	nmap <leader>rr <Plug>(coc-rename)
	nmap <leader>g[ <Plug>(coc-diagnostic-prev)
	nmap <leader>g] <Plug>(coc-diagnostic-next)
	nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
	nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
	nnoremap <leader>cr :CocRestart
endfun

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! CocBaseInstall()
    CocInstall coc-clangd coc-python coc-markdownlint coc-metals coc-sh coc-snippets coc-vimlsp
endfunction

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Nerd tree
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Starts autocomplete
autocmd Filetype * :call GoCoc()
