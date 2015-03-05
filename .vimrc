set noswapfile
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'git://github.com/othree/javascript-libraries-syntax.vim.git'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'airblade/vim-gitgutter'
"Plugin 'bling/vim-airline'
Plugin 'git://github.com/kien/ctrlp.vim.git'
Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'git://github.com/Tuch/vim-sync.git'
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
"Plugin 'bronson/vim-trailing-whitespace'
Plugin 'git://github.com/evidens/vim-twig.git'
Plugin 'git://github.com/briancollins/vim-jst.git'
Plugin 'git://github.com/elzr/vim-json.git'
Plugin 'git://github.com/rking/ag.vim.git'
Plugin 'git://github.com/stefandtw/quickfix-reflector.vim.git'
"Plugin 'git://github.com/yssl/QFEnter.git'
"Plugin 'git://github.com/edkolev/tmuxline.vim.git'
Plugin 'git://github.com/bling/vim-airline'
Plugin 'git://github.com/mattn/emmet-vim.git'
"Plugin 'git://github.com/alvan/vim-closetag.git'
Plugin 'git://github.com/majutsushi/tagbar.git'
"Plugin 'git://github.com/xolox/vim-easytags.git'
"Plugin 'git://github.com/xolox/vim-misc.git'
"Plugin 'git://github.com/szw/vim-tags.git'
"Plugin 'git://github.com/bruno-/vim-alt-mappings.git'
"Plugin 'https://github.com/miyakogi/conoline.vim'
Plugin 'git://github.com/bruno-/vim-alt-mappings.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/dyng/ctrlsf.vim'
Plugin 'git://github.com/pelodelfuego/vim-swoop'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

set backspace=2
set termencoding=utf-8
set fileencodings=utf8,cp1251
set encoding=utf8
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=2
set cursorline
set number
set incsearch
set hlsearch
set smartcase
set showmatch
set showcmd
set ruler
set relativenumber
set clipboard+=unnamed
set keymap=russian-jcuken
set iminsert=0
set imsearch=0
set smartcase
set whichwrap+=<,>,h,l,[,]
set t_Co=256
set autoread
set ttyfast
set mouse=a
set ttymouse=xterm2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
set scrolloff=999

highlight CursorLine ctermbg=23 guibg=#002B37 cterm=NONE
au InsertEnter * highlight CursorLine ctermbg=NONE
au InsertLeave * highlight CursorLine ctermbg=23
"au InsertLeave * hi Cursor ctermbg=red
"au InsertEnter * hi Cursor ctermbg=green
highlight Search cterm=NONE ctermfg=231 ctermbg=208
highlight Visual ctermfg=208 ctermbg=231

highlight clear SignColumn
iabbrev funciton functionset imsearch=0

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_section_warning = ''

let g:syntastic_check_on_open=1
let g:syntastic_quiet_messages = { "level": [] }
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_error_symbol='E'
let g:syntastic_warning_symbol='W'
let g:syntastic_javscript_jslint_args = ""
let g:syntastic_javascript_jshint_args = '--config /Users/Tuch/.jshintrc'
let g:syntastic_enable_highlighting=0

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_working_path_mode = 0

let g:user_emmet_leader_key = '<leader>,'
let g:swoopWindowsVerticalLayout = 1

nmap <Leader>hr <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
"nmap <Leader>hn <Plug>GitGutterNextHunk
"nmap <Leader>hp <Plug>GitGutterPrevHunk
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <leader>p :CtrlP<CR><C-\>w
nmap <leader>pm :CtrlPMixed<CR><C-\>w
nmap <leader>pb :CtrlPBuffer<CR><C-\>w
nmap <leader>pf :CtrlPFunky<CR><C-\>w
nmap <leader>tr :%s/
nmap <leader>trw :%s/\(<c-r>=expand("<cword>")<cr>\)/
nmap <leader>ts :Ag '
nmap <leader>tsw :Ag '<cword>' .<CR>
map <ScrollWheelUp> 2<C-Y>
map <ScrollWheelDown> 2<C-E>
map <leader>nt :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
map <space> :noh<cr>
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz


"au VimLeave * silent call SyncUploadFile()
"autocmd BufWritePost * :call SyncUploadFile()
"autocmd BufReadPre * :call SyncDownloadFile()

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()

" populate the argument list with each of the files named in the quickfix list
function! QuickfixFilenames()
    let buffer_numbers = {}

    for quickfix_item in getqflist()
        let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
    endfor

    "execute ":cclose"
    "execute ":call SwoopMulti()"
    return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

"Restore cursor after quit file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
au FileChangedShell * echo "Warning: File changed on disk"

autocmd BufEnter * :syntax sync fromstart

let g:ag_highlight=1
