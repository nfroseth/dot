" Xophules
set nocompatible

" Don't make noise
set visualbell

" activate line numbers
" disable relative line numbers, remove no to sample it
set number
set relativenumber

" tabs are the devil
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab
set autoindent

" center the cursor always on the screen
set scrolloff=12

" highlight search hits,  \+<cr> to clear 
set hlsearch
set incsearch
set linebreak
map <silent> <leader><cr> :noh<cr>

" avoid most of the 'Hit Enter ...' messages
set shortmess=aoOtI

" prevents truncated yanks, deletes, etc.
set viminfo='20,<1000,s1000

" not a fan of bracket matching or folding
let g:loaded_matchparen=1
set noshowmatch
" no folds, ever
set foldlevelstart=99
set foldmethod=manual
" default file encoding
set encoding=utf-8
" Line wrap
set wrap

" Just the defaults, these are changed per filetype by plugins.
" Most of the utility of all of this has been superceded by the use of
" modern simplified pandoc for capturing knowledge source instead of
" arbitrary raw text files.
set formatoptions-=t   " don't auto-wrap text using text width
set formatoptions+=c   " autowrap comments using textwidth with leader
set formatoptions-=r   " don't auto-insert comment leader on enter in insert
set formatoptions-=o   " don't auto-insert comment leader on o/O in normal
set formatoptions+=q   " allow formatting of comments with gq
set formatoptions-=w   " don't use trailing whitespace for paragraphs
set formatoptions-=a   " disable auto-formatting of paragraph changes
set formatoptions-=n   " don't recognized numbered lists
set formatoptions+=j   " delete comment prefix when joining
set formatoptions-=2   " don't use the indent of second paragraph line
set formatoptions-=v   " don't use broken 'vi-compatible auto-wrapping'
set formatoptions-=b   " don't use broken 'vi-compatible auto-wrapping'
set formatoptions+=l   " long lines not broken in insert mode
set formatoptions+=m   " multi-byte character line break support
set formatoptions+=M   " don't add space before or after multi-byte char
set formatoptions-=B   " don't add space between two multi-byte chars in join 

" stop complaints about switching buffer with changes
set hidden

" command history
set history=1000

set nobackup
set noswapfile
set nowritebackup
set undodir=~/.vim/undodir
set undofile

" Get syntax files from config folder
set runtimepath+=~/.config/nvim/syntax

" Fzf 
" fzf in runtimepath
set rtp+=/usr/local/opt/fzf
" Use ripgrep as grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
" enable history for fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'
" Use ripgrep as grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Colorscheme and apperance
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark
set t_Co=256

" --- Airline ---
let g:airline_extensions = []
let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'everforest'

" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'
" For better performance
let g:everforest_better_performance = 1
let g:everforest_enable_italic = 1
"let g:everforest_disable_italic_comment = 0

let g:everforest_transparent_background = 2
let g:everforest_spell_foreground = 'colored'
let g:everforest_ui_contrast = 'high'

"let g:everforest_diagnostic_text_highlight = 0
"let g:everforest_diagnostic_line_highlight = 'colored'
"let g:everforest_diagnostic_virtual_text = 0

colorscheme everforest
hi Normal guibg=NONE ctermbg=NONE

" Mappings
" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" functions keys
map <F1> :set number!<CR> :set relativenumber!<CR>
nmap <F2> :call <SID>SynStack()<CR>
set pastetoggle=<F3>
map <F4> :set list!<CR>
map <F5> :set spell!<CR>
map <F7> :set cursorline!<CR>
map <F8> :TagbarToggle<CR>
map <F12> :set fdm=indent<CR>
