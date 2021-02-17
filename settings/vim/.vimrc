set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-test/vim-test'
Plugin 'tpope/vim-dispatch'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required

filetype plugin indent on    " required
syntax on

colorscheme PaperColor

set nu
set rnu
set bg=dark
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set wildmenu

set shiftwidth=4
set tabstop=4
set expandtab
autocmd FileType python     setlocal shiftwidth=2 tabstop=2 expandtab
autocmd Filetype html       setlocal shiftwidth=2 tabstop=2 expandtab
autocmd Filetype javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType make       setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab

" Encoding
let $LANG="zh_TW.UTF-8"
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,big5,enc-jp,gbk,euc-kr,utf-bom,iso8859-1

" Indent guide
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter ='unique_tail'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt=menu

" Auto reload vimrc
autocmd BufWritePost .vimrc source %

" Highlight trailing white space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" vim-test
let test#strategy = "dispatch"
let test#vim#term_position = "belowright"

map <silent> <F5> :NERDTreeToggle<CR>
imap jj <Esc>
nmap <C-n> :TestNearest<CR>
nmap <C-f> :TestFile<CR>
nmap <C-s> :TestSuite<CR>
nmap <C-l> :TestLast<CR>
nmap <C-g> :TestVisit<CR>
