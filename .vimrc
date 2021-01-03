function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

call SourceIfExists("~/.vim/pcontrol.vim")

call SourceIfExists("~/.vim/coc.conf.vim")

set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme pablo

syntax enable
set autoindent
set cindent
set nu
set ts=4
set shiftwidth=4

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" set laststatus=2

if !has('gui_running')
	set t_Co=256
endif

set noshowmode
let mapleader=","
set mouse=a
set hlsearch
set backspace=2
set cursorline
set cursorcolumn
set ignorecase
set expandtab
" autocmd BufWritePost *.py execute ':!black -q %:p'

" shortcut configuration

nnoremap <leader>e :enew<Enter>        
nnoremap <leader>q :bprevious!<Enter> 
nnoremap <leader>r :bnext!<Enter>       
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

" airline configuration

let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1     
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline_theme='light'
let g:airline_powerline_fonts=1

let g:airline_section_y = 'BN: %{bufnr("%")}'

" NerdComment configuration

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
map <F4> <leader>ci <CR>

" NerdTree configuration

map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

" vim-clap configuration

let g:clap_forerunner_status_sign = 1

" Ale configuration
"
" let g:ale_linters = {'python': ['pyls']}
" let g:ale_python_pylint_options = '--load-plugins pylint_django'
" let g:ale_fixers = {'python': ['black', 'isort']}
" let g:ale_fix_on_save = 1
" let g:ale_completion_enabled = 1
" set omnifunc=ale#completion#OmniFunc
" let g:ale_completion_autoimport = 1
"
" Deoplete configuration

" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \})

