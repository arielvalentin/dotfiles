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
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-pathogen'
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
Plug 'universal-ctags/ctags'
Plug 'craigemery/vim-autotag'

call plug#end()
