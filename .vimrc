set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'puppetlabs/puppet-syntax-vim'
" Plugin 'severin-lemaignan/vim-minimap'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'Raimondi/delimitMate'
Plugin 'Tuch/vim-easygrep'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'alvan/vim-closetag'
Plugin 'bling/vim-airline'
Plugin 'briancollins/vim-jst'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'evidens/vim-twig'
Plugin 'garbas/vim-snipmate'
Plugin 'grassdog/tagman.vim'
Plugin 'groenewege/vim-less'
Plugin 'ianks/vim-tsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pmsorhaindo/syntastic-local-eslint.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wavded/vim-stylus'


"Plugin 'matze/vim-move'
"Plugin 'ap/vim-css-color'
"Plugin 'msanders/snipmate.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'kshenoy/vim-signature'
"Plugin 'Valloric/MatchTagAlways'
"Plugin 'tpope/vim-repeat'
"Plugin 'tmhedberg/matchit'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/neomru.vim'
"Plugin 'thinca/vim-qfreplace'
"Plugin 'Shougo/unite-outline'
"Plugin 'ujihisa/unite-locate'
"Plugin 'thinca/vim-unite-history'
"Plugin 'osyo-manga/unite-filetype'
"Plugin 'osyo-manga/unite-quickfix'
"Plugin 'osyo-manga/unite-fold'
"Plugin 'tacroe/unite-mark'
"Plugin 'Shougo/vimfiler.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

set noswapfile
set backspace=2
set termencoding=utf-8
set fileencodings=utf8,cp1251
set encoding=utf8

set shiftround
set softtabstop=2
set tabstop=2 shiftwidth=2 expandtab
au FileType json,jade setl sw=2 sts=2 et

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
"set clipboard+=unnamed
set keymap=russian-jcuken
set iminsert=0
set imsearch=0
set smartcase
"set whichwrap+=<,>,h,l,[,]
set t_Co=256
set autoread
set ttyfast
set mouse=a
set ttymouse=xterm2
set statusline=
"set scrolloff=999
set hidden
set history=1000
set undolevels=1000
set timeoutlen=1000 ttimeoutlen=0
set noeol
"set ignorecase
set list
set listchars=tab:→→
"set grepprg=ag\ --nogroup
"set grepprg=ack
set grepprg=pt
" set nomagic "dit - doesn't work with this option
set suffixesadd=index.js,index.jsx,.jsx,.js,.less,.css
colorscheme default

hi SyntasticErrorSign ctermbg=160 ctermfg=15
hi SyntasticWarningSign ctermbg=NONE ctermfg=8
hi BookmarkSign ctermbg=NONE ctermfg=15
hi MatchParen cterm=BOLD,UNDERLINE ctermfg=226 ctermbg=NONE
hi Cursor ctermbg=255 ctermfg=23
hi CursorLineNR ctermbg=25 ctermfg=255
hi LineNr ctermfg=8
hi VertSplit ctermfg=202 cterm=BOLD
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE cterm=NONE
hi Search ctermfg=234 ctermbg=221
hi IncSearch ctermbg=234 ctermfg=251
hi Visual ctermfg=15 ctermbg=31
hi StatusLine ctermbg=23 ctermfg=15
hi Folded ctermbg=237 ctermfg=244
hi IndentGuidesOdd ctermbg=NONE
hi IndentGuidesEven ctermbg=black
au insertenter * hi CursorLineNR ctermfg=25 ctermbg=25
au insertleave * hi CursorLineNR ctermfg=255 ctermbg=25
hi clear SignColumn
hi clear VertSplit

iabbrev funciton function

let g:ycm_key_list_select_completion = []
let g:ycm_autoclose_preview_window_after_completion = 1
let g:user_emmet_leader_key = '<leader>,'
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion"
" let g:minimap_highlight='Visual'
" let delimitMate_matchpairs = "(:),[:],{:}"
" let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.twig,*.jst"
" let g:mta_filetypes = {'html':1, 'xhtml':1, 'xml':1, 'jinja':1, 'twig':1, 'jst':1, 'php':1}
let g:gitgutter_max_signs=5000
let g:NERDTreeWinPos = "right"
let g:NERDCompactSexyComs = 1
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

" let g:tagbar_autofocus = 1
" let g:tagbar_type_javascript = {'ctagsbin' : '/usr/local/bin/jsctags'}

let g:syntastic_check_on_open=1
let g:syntastic_quiet_messages = { "level": [] }
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol='E'
let g:syntastic_warning_symbol='W'
let g:syntastic_enable_highlighting=0

let g:EasyGrepAllOptionsInExplorer=1 " don't show advanced greping options
let g:EasyGrepFilesToExclude="tags,*.dat,*.min.*,*.map"  " not usable if I use ag for searching
let g:EasyGrepIgnoreCase=0
let g:EasyGrepRecursive=1              " turn on recurse option for replacement
let g:EasyGrepCommand=1
let g:EasyGrepReplaceWindowMode=2
let g:EasyGrepJumpToMatch=0
let g:EasyGrepEnableLogging=1
"let g:EasyGrepHighlightQfMatches = 1

let g:ctrlp_user_command = 'ag --vimgrep %s -l -g ""'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_extensions = ['mixed']
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_lazy_update = 1

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_symbols_readonly = ''
let g:airline_symbols_linenr = ''
let g:airline_theme='bubblegum'
let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#branch#enabled = 1
let g:airline_section_warning=''
let g:airline_section_a=''
"let g:airline_section_b=''
let g:airline_section_x=''
let g:airline_section_z='%1*%=%5l%*%2*/%L%*%1*%4v'
"let g:move_key_modifier = 'C'
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:vim_json_syntax_conceal = 0

nmap <Leader>hr <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <leader>r "hy:%s/<c-r>=expand('<cword>')<cr>//gc<left><left><left>
vnoremap <leader>r "hy:%s/<c-r>"//gc<left><left><left>
nmap <leader>s /<c-r>=expand('<cword>')<cr>
vnoremap <leader>s "hy/<c-r>"
nmap gw :Grep <c-r>=expand('<cword>')<cr>
map <ScrollWheelUp> 2<C-Y>
map <ScrollWheelDown> 2<C-E>
"map <leader>nf :NERDTreeFind<cr>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"nnoremap j gj
"nnoremap k gk
nmap s <Plug>(easymotion-s2)
"noremap <BS> "_X
"vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>
"nnoremap * *N
nmap <silent> ÷ :nohlsearch<CR>
nnoremap K :ccl<CR>
"nnoremap q :ccl<CR>
"nnoremap q: :ccl<CR>
map "" :reg<CR>
map <F5> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>
"map <F7> :reg<CR>
"map <F8> <nop>
"noremap <F13> :w<CR>

"restore last cursor position after file opening autocmd BufEnter * :syntax sync fromstart
au BufWrite * mark ' | silent! %s/\s\+$// | norm ''

au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"
au BufReadPre *.js let b:javascript_lib_use_jquery = 1
au BufReadPre *.js let b:javascript_lib_use_underscore = 1
au BufReadPre *.js let b:javascript_lib_use_angularjs = 1
au filetype crontab setlocal nobackup nowritebackup
"au BufWritePost .vimrc source $MYVIMRC

"hack for stop trim noeol of end file
"au BufWritePre * :set binary | set noeol
"au BufWritePost * :set nobinary | set eol

"Restore cursor after file quit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au FileChangedShell * echo "Warning: File changed on disk"

"support project (local) settings like '~/project/.vimlocal'
let b:thisdir=expand("%:p:h")
let b:vim=b:thisdir."/.vimlocal"
if (filereadable(b:vim))
    execute "source ".b:vim
endif

" Changing cursor shape per mode 1 or 0 -> blinking block, 2 -> solid block, 3 " -> blinking underscore, 4 -> solid underscore
if exists('$TMUX')
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[1 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[3 q\<Esc>\\"
    au VimLeave * silent !echo -ne "\033Ptmux;\033\033[3 q\033\\"
else
    let &t_SI .= "\<Esc>[1 q"
    let &t_EI .= "\<Esc>[3 q"
    au VimLeave * silent !echo -ne "\033[3 q"
endif

"map <c-f> :call JsBeautify()<cr>
" autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
" "autocmd FileType javascript vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
" autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
" autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
" autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
" autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
" au FileType javascript.jsx setlocal sw=2 sts=2 et

let g:jsx_ext_required = 0
Plugin 'mxw/vim-jsx'
