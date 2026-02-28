" ############################################################################
" Install / load plugins
"#############################################################################

runtime plugins.vim

execute pathogen#infect()

"#############################################################################
" Settings
"#############################################################################
set autoread                                    " Detect file changes refresh buffer
set backspace=indent,eol,start                  " Backspace of newlines
set colorcolumn=120                              " Show vertical column
set cursorline                                  " Highlight current line

" Set tabs to 2 spaces
set sw=2 sts=2 ts=2 expandtab

set formatoptions=qrn1                          " http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set hidden                                      " allow buffers to be hidden
set history=1024                                " History size
set hlsearch                                    " Highlight matches to recent searches
set ignorecase                                  " Ignore case when searching
set incsearch                                   " Use incremental search
set inccommand=split                            " Shows incremental preview of text you are trying to :substitute
set laststatus=2                                " Use two rows for status line
set nocompatible                                " Not compatible w/ vi
set number                                      " Display line numbers
set ruler                                       " Show line and column number of cursor
set scrolloff=3                                 " Always show 3 lines around cursor
set splitright                                  " open new vertical buffers on the right...
set splitbelow                                  " ...and horizontal ones below
set showmatch                                   " Show matching braces
set smartcase                                   " Turn case sensitive search back on in certain cases
set noswapfile                                    " ditch swapfiles
set textwidth=0                                 " Do not break lines
set ttimeoutlen=100                             " Without this entering normal mode takes forever
set wildmenu                                    " Autocomplete filenames
set wildmode=list:longest,full                  " Show completions as list with longest match then full matches
set wildignore+=tags                            " Ignore certain files/folders when globbing
set wildignore+=cscope.out
set wildignore+=tmp/**
set wildignore+=public/uploads/**
set wildignore+=public/images/**
set wildignore+=vendor/**
set nowrap                                        " Turn off line wrapping

set rtp+=/usr/local/opt/fzf
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"#############################################################################
" Misc
"#############################################################################

set encoding=utf-8
syntax enable
set termguicolors

" let g:python3_host_prog = '/opt/homebrew/bin/python3'
if has('nvim') && executable('pipx')
  let s:py = system('pipx runpip pynvim python -c "import sys; print(sys.executable)"')
  let g:python3_host_prog = substitute(s:py, '\n\+$', '', '')
endif

set statusline+=%#warningmsg#
set statusline+=%*

" Limelight is unable to calculate colors in iTerm2 with Solarized. https://github.com/junegunn/limelight.vim/issues/27
" This configuration gives limelight some clues
let g:limelight_conceal_ctermfg = 245  " Solarized Base1
let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1

" Enable bundled matchit macros
runtime macros/matchit.vim

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on
let mapleader = ","
" let maplocalleader = ";"

"#############################################################################
" Plugin configuration
"#############################################################################
" let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

nmap <silent> <Leader>k <Plug>(ale_previous_wrap)
nmap <silent> <Leader>j <Plug>(ale_next_wrap)
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.

let NERDSpaceDelims = 1
let NERDTreeShowHidden=1

let ruby_operators=1

let g:auto_save = 0
au CursorHold,InsertLeave * nested update

let g:templates_directory = "~/.config/nvim/templates/"

" let g:deoplete#enable_at_startup = 1
" let g:neosnippet#enable_completed_snippet = 1
let g:snipMate = {'snippet_version': 1}

"#############################################################################
" Keymaps
"#############################################################################

" Gracefully handle holding shift too long after : for common commands
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev Tabe tabe
cabbrev Tabc tabc

" Make Y consistent with D and C
map Y y$

" File tree browser
map \ :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \| :NERDTreeFind<CR>

nnoremap <Leader>f :Files<cr>
nnoremap <Leader>b :Buffers<cr>
let g:fzf_tags_command = 'ctags'
let g:fzf_layout = { 'window': 'botright new' }


" split pane shortcut
" nnoremap <Leader>v :vs<cr>

" Open Fugitive status buffer
nnoremap <Leader>g :Gstatus<CR>

" Open and close the quickfix window
map <leader>qo :copen<CR>
map <leader>qc :cclose<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" ctags again
" map <leader>rt :Dispatch ctags -R * <CR>

" Comment/uncomment lines
map <leader>/ <plug>NERDCommenterToggle

" Copy current file path to system pasteboard
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Delete focused buffer without losing split
" nnoremap <C-c> :bp\|bd #<CR>

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Quickly switch to alternate file
" nnoremap <Leader><Leader> <c-^>

" Auto-indent whole file
nmap <leader>=  gg=G``

" Show invisible chars
set list
set listchars=tab:▸\ ,trail:.
nmap <leader>l :set list!<CR>
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Map ,e and to open files in the same directory as the current file
" cnoremap %% <C-R>=expand('%:h').'/'<cr>
" map <leader>e :edit %%

" Map ,s to search and replace"
" noremap <leader>s :%s/

" Make it easier to switch between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Apply macros w/ Q
nnoremap Q @q
vnoremap Q :norm @q<cr>

" Toggle paste/nopaste mode
map <F2> :set paste!<CR>

" Toggle TagBar
map <F8> :BTags<CR>

let g:rails_ctags_arguments = ['']

"#############################################################################
" Autocommands
"#############################################################################

autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

" Used to format modern JS https://github.com/prettier/prettier
autocmd FileType javascript set formatprg=prettier\ --stdin

" Word wrap without line breaks for text files
autocmd BufRead,BufNewFile *.txt,*.md,*.markdown,*.rdoc set wrap linebreak nolist textwidth=0 wrapmargin=0

let g:vim_yaml_helper#always_get_root = 1
let g:vim_yaml_helper#auto_display_path = 1

" Syntax of these languages is fussy over tabs Vs spaces
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au FileType gitcommit,gitrebase " let g:gutentags_enabled=0
au FileType .env,*.log,*.txt,*.rdoc,Gemfile,Gemfile.lock,*.json,Dockerfile,*.md,*.html " let g:gutentags_enabled=0

" XML syntax
autocmd BufNewFile,BufRead *.rss setfiletype xml

" Ruby syntax
autocmd BufRead,BufNewFile *_spec.rb,*.thor,*.god,Gemfile,Vagrantfile,Appraisal set filetype=ruby
autocmd FileType ruby let &l:tags = pathogen#legacyjoin(pathogen#uniq(
      \ pathogen#split(&tags) +
      \ map(split($GEM_PATH,':'),'v:val."/gems/*/tags"')))


" JavaScript syntax
autocmd BufRead,BufNewFile *.json set filetype=javascript

" When viewing a git tree or blob, quickly move up to view parent
autocmd User fugitive
      \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
      \   nnoremap <buffer> .. :edit %:h<CR> |
      \ endif

" Auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" let test#runners = {'Ruby': ['GitHub']}

let test#strategy = "dispatch"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
