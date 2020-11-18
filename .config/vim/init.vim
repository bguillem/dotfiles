" last updated : 10/11/2020
" note: this works with vim and neovim, but if you want to take full advantage of fzf, nvim is better.

" ------------------------------------
"           INSTALLATION
" ------------------------------------


" This condition is used to check if the plugins are already installed. If the plug.vim file is not here, this sequence is triggered.
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ~/.config/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

" Installation routine. Run :PlugInstall to install the plugins.
call plug#begin('~/.config/nvim/plugged')

" UI
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'Nero-F/vim-tek-header'

" autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" colorschemes
Plug 'christophermca/meta5'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" ------------------------------------
"             SETTINGS
" ------------------------------------


" Leader Key -- this key is used for key binds, it is recommanded to change it if you use
" an AZERTY keyboard, to maybe `, or RIGHT-CTRL...
let mapleader="\\"


" Colors and UI :
colorscheme meta5
let g:airline_theme='angr'
set bg=dark
set termguicolors
syntax on
set number
setlocal colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" backup handling
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" Misc settings, you'll find these in pretty much all .vimrc files :
set nocompatible
set splitbelow splitright       " set split screen priorities
set expandtab
set shiftwidth=4                " defines tab length
set softtabstop=4
set tabstop=4
filetype plugin on
set encoding=utf-8
set noerrorbells                "disables annoying 'ting!' sound.
set nowrap
set wildmode=longest,list,full
set updatetime=200
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set hidden
set nowritebackup
set cmdheight=2
set shortmess+=c
set incsearch
set cmdheight=2
set shortmess+=c
set relativenumber

" tells vim which files are scala files.
au BufRead,BufNewFile *.sbt, *.sc, set filetype=scala


" ------------------------------------
"             VARIABLES
" ------------------------------------


" FZF stuff -- this is all default for now
" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }


let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':       ['fg', 'Normal'],
            \ 'bg':         ['bg', 'Normal'],
            \ 'hl':         ['fg', 'Comment'],
            \ 'fg+':        ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':        ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':        ['fg', 'Statement'],
            \ 'info':       ['fg', 'PreProc'],
            \ 'border':     ['fg', 'Ignore'],
            \ 'prompt':     ['fg', 'Conditional'],
            \ 'pointer':    ['fg', 'Exception'],
            \ 'marker':     ['fg', 'Keyword'],
            \ 'spinner':    ['fg', 'Label'],
            \ 'header':     ['fg', 'Comment'] }


" ------------------------------------
"             COMMANDS
" ------------------------------------


" Calls scalafmt on your current buffer
command! -nargs=0 Format :call CocAction('format')

"Get Files
command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
            \   fzf#vim#with_preview(), <bang>0)


command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
            \ call fzf#vim#grep(
            \   'git grep --line-number '.shellescape(<q-args>), 0,
            \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


" ------------------------------------
"             BINDS
" ------------------------------------


nnoremap <leader>z           :vnew<CR>Ex .<CR>
nnoremap <leader><BACKSPACE> :bd<CR>
nnoremap <silent><leader>1   :bdelete 1<CR>
nnoremap <silent><leader>2   :bdelete 2<CR>
nnoremap <silent><leader>3   :bdelete 3<CR>
nnoremap <silent><leader>4   :bdelete 4<CR>
nnoremap <silent><leader>5   :bdelete 5<CR>
nnoremap <silent><leader>6   :bdelete 6<CR>
nnoremap <silent><leader>7   :bdelete 7<CR>
nnoremap <silent><leader>8   :bdelete 8<CR>
nnoremap <silent><leader>9   :bdelete 9<CR>
nnoremap <silent><leader>0   :bdelete 0<CR>
nnoremap <silent><leader>s   :bnext<CR>
nnoremap <silent><leader>a   :bprevious<CR>
nnoremap <leader>x           :tabnew .<CR>e .<CR>
nnoremap <leader>v           :tabn<CR>
nnoremap <leader>c           :tabp<CR>
nnoremap <leader><left>      :wincmd h<CR>
nnoremap <leader><down>      :wincmd j<CR>
nnoremap <leader><up>        :wincmd k<CR>
nnoremap <leader><right>     :wincmd l<CR>
nnoremap <leader>m           :NERDTreeToggle<CR>
nnoremap <leader>u           :UndotreeShow<CR>
nnoremap <leader>pv          :wincmd v<bar> :Ex <CR>
nnoremap <silent> <Leader>=  :vertical resize +5<CR>
nnoremap <silent> <Leader>-  :vertical resize -5<CR>
map <leader>f                :Files<CR>
map <leader>b                :Buffers<CR>
nnoremap <leader>r           :Lines<CR>
nnoremap <leader>e           :BLines<CR>
nnoremap <leader>g           :Rg<CR>
nnoremap <leader>t           :Tags<CR>
nnoremap <leader>l           :CocList<CR>

" ------------------------------------
"             FUNCTIONS
" ------------------------------------


fun! GoCoc()
    " autoruns - in theory, you should never touch this
    inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()
    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()
    " GoTo code navigation.
    nmap <silent> <leader>o :Format<CR>
    nmap <silent> <leader>d :call <SID>show_documentation()<>
    nmap <leader>gd <Plug>(coc-definition)
    nmap <silent> <leader>q :call clangd.switchSourceHeader<CR>
    nmap <leader>gy <Plug>(coc-type-definition)
    nmap <leader>gi <Plug>(coc-implementation)
    nmap <leader>gr <Plug>(coc-references)
    nmap <leader>rn <Plug>(coc-rename)
    nmap <leader>g[ <Plug>(coc-diagnostic-prev)
    nmap <leader>g] <Plug>(coc-diagnostic-next)
    nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
    nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
    nmap <silent> <leader>ws <Plug>(coc-metals-expand-decoration)
    nnoremap <leader>cr :CocRestart
endfun

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! CocBaseInstall()
    CocInstall coc-clangd coc-python coc-markdownlint coc-metals coc-sh coc-snippets coc-json coc-vimlsp
endfunction

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction


" ------------------------------------
"             AUTORUNS
" ------------------------------------

" Highlights comment in json files
autocmd FileType json syntax match Comment +\/\/.\+$+

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Starts autocomplete
autocmd Filetype * :call GoCoc()

