" last updated : 11/11/2020
" note: this works with vim and neovim, but if you want to take full advantage of fzf, nvim is better.

" ------------------------------------
"           INSTALLATION
" ------------------------------------

" dependencies: npm the_silver_surfer fd ripgrep fzf universal-ctags
" package name vary depending on the distributions !

" This condition is used to check if the plugins are already installed. If the plug.vim file is not here, this sequence is triggered.
" don't forget to call CocBaseInstall to install basic plugins
" reference: https://www.chrisatmachine.com/Neovim/08-fzf/
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
Plug 'Nero-F/vim-tek-header' " generates Epitech Header when using Leader + H

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


nnoremap <leader>z           :vnew<CR>e .<CR>                           " create new buffer in splitscreen
nnoremap <leader><BACKSPACE> :bd<CR>                                    " deletes current buffer
nnoremap <silent><leader>1   :bdelete 1<CR>                             " deletes buffer number 1
nnoremap <silent><leader>2   :bdelete 2<CR>                             " deletes buffer number 2
nnoremap <silent><leader>3   :bdelete 3<CR>                             " deletes buffer number 3
nnoremap <silent><leader>4   :bdelete 4<CR>                             " deletes buffer number 4
nnoremap <silent><leader>5   :bdelete 5<CR>                             " deletes buffer number 5
nnoremap <silent><leader>6   :bdelete 6<CR>                             " deletes buffer number 6
nnoremap <silent><leader>7   :bdelete 7<CR>                             " deletes buffer number 7
nnoremap <silent><leader>8   :bdelete 8<CR>                             " deletes buffer number 8
nnoremap <silent><leader>9   :bdelete 9<CR>                             " deletes buffer number 9
nnoremap <silent><leader>0   :bdelete 0<CR>                             " deletes buffer number 0
nnoremap <silent><leader>s   :bnext<CR>                                 " go to next buffer
nnoremap <silent><leader>a   :bprevious<CR>                             " go to previous buffer
nnoremap <leader>x           :tabnew .<CR>e .<CR>                       " loads a new tab
nnoremap <leader>v           :tabn<CR>                                  " go to next tab
nnoremap <leader>c           :tabp<CR>                                  " go to previous tab
nnoremap <leader><left>      :wincmd h<CR>                              " move cursor to left window
nnoremap <leader><down>      :wincmd j<CR>                              " move cursor to down window
nnoremap <leader><up>        :wincmd k<CR>                              " move cursor to up window
nnoremap <leader><right>     :wincmd l<CR>                              " move cursor to right window
nnoremap <leader>m           :NERDTreeToggle<CR>                        " toggles NERDTree
nnoremap <leader>u           :UndotreeShow<CR>                          " toggles UndoTree
nnoremap <leader>pv          :wincmd v<bar> :Ex <CR>                    " splits screen and opens another buffer
nnoremap <silent> <Leader>=  :vertical resize +5<CR>                    " resize +5
nnoremap <silent> <Leader>-  :vertical resize -5<CR>                    " resize -5
map <leader>f                :Files<CR>                                 " search for a file
map <leader>b                :Buffers<CR>                               " search in your current buffers
nnoremap <leader>w           :Lines<CR>                                 " search for a specific line in the file
nnoremap <leader>e           :BLines<CR>                                " search for a specific line in your buffers
nnoremap <leader>g           :Rg<CR>                                    " search for patterns with ripgrep
nnoremap <leader>t           :Tags<CR>                                  " search for tags


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
    nmap <silent> <leader>o         :Format<CR>                         " calls scalafmt
    nmap <silent> <leader>d         :call <SID>show_documentation()<>   " shows available documentation
    nmap <leader>gd                 <Plug>(coc-definition)              " shows function type definition
    nmap <silent> <leader>q         :call clangd.switchSourceHeader<CR> " switches between source and header for clangd
    nmap <leader>gy                 <Plug>(coc-type-definition)         " shows function definition
    nmap <leader>gi                 <Plug>(coc-implementation)          " shows function implementation
    nmap <leader>gr                 <Plug>(coc-references)              " shows function references
    nmap <leader>rr                 <Plug>(coc-rename)                  " renames variable or function
    nmap <leader>g[                 <Plug>(coc-diagnostic-prev)         " go to previous diagnostic
    nmap <leader>g]                 <Plug>(coc-diagnostic-next)         " go to next diagnostic
    nmap <silent> <leader>gp        <Plug>(coc-diagnostic-prev-error)   " go to previous error
    nmap <silent> <leader>gn        <Plug>(coc-diagnostic-next-error)   " go to next error
    nnoremap <leader>cr             :CocRestart
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


" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Starts autocomplete
autocmd Filetype * :call GoCoc()

