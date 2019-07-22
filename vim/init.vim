"  ############################################################################
" Install / load plugins
"#############################################################################

call plug#begin('~/.config/nvim/plugged')

Plug 'AndrewRadev/writable_search.vim'            " Grep for something, then write the original files directly through the search results
Plug 'DataWraith/auto_mkdir'                      " Allows you to save files into directories that do not exist yet
Plug 'MarcWeber/vim-addon-mw-utils'               " vim-snipmate dependency
Plug 'airblade/vim-gitgutter'                     " shows a git diff in the gutter (sign column) and stages/reverts hunks
Plug 'altercation/vim-colors-solarized'           " Solarized color theme
Plug 'bling/vim-airline'                          " lean & mean status/tabline for vim that's light as air
Plug 'chazy/cscope_maps'                          " cscope keyboard mappings
Plug 'chrisbra/csv.vim'                           " Filetype plugin for csv files
Plug 'ervandew/supertab'                          " Perform all your vim insert mode completions with Tab
Plug 'garbas/vim-snipmate'                        " handy code snippets
Plug 'godlygeek/csapprox'                         " dependency for Solarized
Plug 'godlygeek/tabular'                          " dependency of vim-markdown
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'                         " vim-snipmate default snippets
Plug 'kana/vim-textobj-user'                      " dependency for rubyblock
Plug 'majutsushi/tagbar'                          " displays tags in a window, ordered by scope
Plug 'nelstrom/vim-textobj-rubyblock'             " custom text object for selecting Ruby blocks
Plug 'scrooloose/nerdcommenter'                   " quickly (un)comment lines
Plug 'scrooloose/nerdtree'                        " A tree explorer plugin
Plug 'sjl/vitality.vim'                           " Make Vim play nicely with iTerm 2 and tmux
Plug 'tomtom/tlib_vim'                            " vim-snipmate dependency
Plug 'tpope/vim-abolish'                          " easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-bundler'                          " makes source navigation of bundled gems easier
Plug 'tpope/vim-dispatch'                         " Asynchronous build and test dispatcher
Plug 'tpope/vim-endwise'                          " wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-fugitive'                         " Git plugin
Plug 'tpope/vim-projectionist'                    " project configuration
Plug 'tpope/vim-rake'                             " makes Ruby project navigation easier for non-Rails projects
Plug 'tpope/vim-repeat'                           " Enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround'                         " makes working w/ quotes, braces,etc. easier
Plug 'tpope/vim-unimpaired'                       " pairs of handy bracket mappings
Plug 'tpope/vim-rails'
Plug 'sheerun/vim-polyglot'                       " Provides plugins for multiple dynamic syntax highlighters
Plug 'vim-scripts/regreplop.vim'                  " operator to replace motion/visual with a register
Plug '907th/vim-auto-save'                  " automatically save changes to disk
Plug 'lmeijvogel/vim-yaml-helper'                 " navigate yaml files more easily
Plug 'aperezdc/vim-template'                      " templates by file type
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocomplete intellisense
Plug 'wokalski/autocomplete-flow'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'artnez/vim-wipeout'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'janko-m/vim-test'
Plug 'bswinnerton/vim-test-github'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()


"#############################################################################
" Settings
"#############################################################################
set autoread                                    " Detect file changes refresh buffer
set backspace=indent,eol,start                  " Backspace of newlines
set colorcolumn=79                              " Show vertical column
set cursorline                                  " Highlight current line

" Set tabs to 2 spaces
set sw=2 sts=2 ts=2 expandtab

set formatoptions=qrn1                          " http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set hidden                                      " allow buffers to be hidden
set history=1024                                " History size
set hlsearch                                    " Highlight matches to recent searches
set ignorecase                                  " Ignore case when searching
set incsearch                                   " Use incremental search
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

"#############################################################################
" Misc
"#############################################################################

set t_Co=256
set encoding=utf-8
syntax enable
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
set background=light
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Limelight is unable to calculate colors in iTerm2 with Solarized. https://github.com/junegunn/limelight.vim/issues/27
" This configuration gives limelight some clues
let g:limelight_conceal_ctermfg = 245  " Solarized Base1
let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1

" Enable bundled matchit macros
runtime macros/matchit.vim

filetype on
filetype plugin on
filetype plugin indent on
let mapleader = ","
" let maplocalleader = ";"

"#############################################################################
" Plugin configuration
"#############################################################################
" let g:airline_powerline_fonts = 1

let NERDSpaceDelims = 1
let NERDTreeShowHidden=1

let ruby_operators=1

let g:auto_save = 0
au CursorHold,InsertLeave * nested update

let g:templates_directory = "~/.config/nvim/templates/"

let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:python3_host_prog = '/usr/local/bin/python3'

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

" Search using Ag
" noremap ,a :Ag<CR>

"
nnoremap <Leader>f :FZF<cr>
nnoremap <Leader>b :Buffers<cr>

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
map <F8> :TagbarToggle<CR>

" Regenerate ctags and cscope.out using starscope gem
" map <F9> :StarscopeUpdate<cr>

" Call the 'alternative' script
" nnoremap <Leader>a <CR>
" let g:rails_projections = {
      " \  "app/controllers/*_controller.rb": {
      " \      "test": [
      " \        "test/requests/{}_spec.rb",
      " \        "test/controllers/{}_spec.rb",
      " \        "test/integration/{}_spec.rb",
      " \        "spec/requests/{}_spec.rb",
      " \        "spec/controllers/{}_controller_spec.rb",
      " \      ],
      " \      "alternate": [
      " \        "test/requests/{}_spec.rb",
      " \        "test/controllers/{}_spec.rb",
      " \        "test/integration/{}_spec.rb",
      " \        "spec/requests/{}_controller_spec.rb",
      " \        "spec/controllers/{}_controller_spec.rb",
      " \      ],
      " \   },
      " \   "spec/requests/*_spec.rb": {
      " \      "command": "request",
      " \      "alternate": "app/controllers/{}.rb"
      " \   },
      " \   "test/requests/*_spec.rb": {
      " \      "command": "request",
      " \      "alternate": "app/controllers/{}.rb"
      " \   },
      " \   "test/integration/*_spec.rb": {
      " \      "command": "integration",
      " \      "alternate": "app/controllers/{}.rb"
      " \   },
      " \ }

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
au FileType gitcommit,gitrebase let g:gutentags_enabled=0
au FileType .env,*.log,*.txt,*.rdoc,Gemfile,Gemfile.lock,*.json let g:gutentags_enabled=0

" XML syntax
autocmd BufNewFile,BufRead *.rss setfiletype xml

" Ruby syntax
autocmd BufRead,BufNewFile *.thor set filetype=ruby
autocmd BufRead,BufNewFile *.god set filetype=ruby
autocmd BufRead,BufNewFile Gemfile set filetype=ruby
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
autocmd BufRead,BufNewFile *_spec.rb set syntax=ruby

" JavaScript syntax
autocmd BufRead,BufNewFile *.json set filetype=javascript


" When viewing a git tree or blob, quickly move up to view parent
autocmd User fugitive
      \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
      \   nnoremap <buffer> .. :edit %:h<CR> |
      \ endif

" Auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

let test#runners = {'Ruby': ['GitHub']}

let test#strategy = "dispatch"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction
autocmd BufWritePre *.rake,*.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.feature call StripTrailingWhitespace()
