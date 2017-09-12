# Gust Dotfiles

## About
Dotfile repository for Gust development machines. Currently only supports vim, but may eventually be used to manage others (i.e. .bashrc, .gitconfig, etc.).

## Usage
### Install
1. Backup any existing dot files in /Users/home (.vimrc, .vim, .gvimrc)
2. Clone the repository (i.e. ~/dotfiles)
3. Navigate to the folder where the repository was cloned
4. Run the `update_symlinks.sh` script.
5. Install vim plugins with `vim +PluginInstall! +qall`
6. Install the CtrlP C extension:
```bash
cd ~/.vim/bundle/ctrlp-cmatcher
./install.sh
```
7. Install `vimproc`
```bash
cd ~/.vim/bundle/vimproc
make
```

### Update

## Overview

### Contributing

Use [GitHub issues](https://github.com/gust/dotfiles/issues) for reporting bug and feature requests.

### Vim

Plugins are manage using [Vundle](https://github.com/gmarik/Vundle.vim). Most of the plugins from the old vim config were ported over to the new configuration. Any new plugins or ones that were *not* ported over are listed below.

#### New Plugins

* [AndrewRadev/writable_search.vim](https://github.com/AndrewRadev/writable_search.vim) - Search for something, then write the original files directly through the search results 
* [DataWraith/auto_mkdir](https://github.com/DataWraith/auto_mkdir) - Allows you to save files into directories that do not exist yet
* [chazy/cscope_maps](https://github.com/chazy/cscope_maps) - Cscope keyboard mappings
* [tpope/vim-bundler](https://github.com/tpope/vim-bundler) - Makes source navigation of bundled gems easier
* [tpope/projectionist](https://github.com/tpope/vim-projectionist) - Project configuration
* [tpope/vim-rake](https://github.com/tpope/vim-rake) - Makes Ruby project navigation easier for non-Rails projects

#### Deprecated Plugins
The following plugins were included in an older version of the vim configuration and are not included in the new config.

* Julian/vim-textobj-variable-segment
* Lokaltog/vim-easymotion
* arcWeber/vim-addon-mw-utils
* Peeja/vim-cdo
* YankRing.vim
* ZoomWin
* brysgo/quickfixfix
* brysgo/test_server
* camelcasemotion
* carlobaldassi/ConqueTerm
* ecomba/vim-ruby-refactoring
* godlygeek/tabular
* henrik/vim-qargs
* jgdavey/vim-blockle
* kana/vim-textobj-line
* kchmck/vim-coffee-script
* matt-royal/diffthese
* mgamba/j-split
* nono/vim-handlebars
* pivotal/tmux-config
* regreplop.vim
* rosstimson/scala-vim-support
* slim-template/vim-slim
* thinca/vim-textobj-between
* vim-scripts/L9

#### New Keymaps

The following new keymaps have been added.

Keymap | Description
---|---
`nnoremap <Leader><Leader> <c-^>`             | Quickly switch to alternate file
`cnoremap %% <C-R>=expand('%:h').'/'<cr>`     | Expand %% to current open buffer directory
`map <leader>e :edit %%`                      | Quickly edit a file in the current buffer's directory
`map <leader>v :view %%`                      | Quickly view a file in the current buffer's directory
`nnoremap Q @q`                               | Apply macros w/ Q
`vnoremap Q :norm @q<cr>`                     |
`map <F9> :StarscopeUpdate<cr>`               | Regenerate ctags and cscope.out using starscope gem
`nmap <CR><CR> :wa <bar> TestifyRunFile<CR>`  | Run test file

#### Deprecated Keymaps
The following keymaps were not included and are suggested for deprecation.

Keymap | Description
--- | ---
`nmap <leader>s  :%s/`                                                | Search
`vmap <leader>s  :s/`                                                 |
`map <leader>v   :vsp<CR>`                                            | Split screen
`map <leader>w   ^Ww`                                                 | Move between screens. Note that the other mappings (`<C-j>`, `<C-k>`, etc.) are still available.
`map <leader>=   ^W=`                                                 |
`map <leader>j   ^Wj`                                                 |
`map <leader>k   ^Wk`                                                 |
`map <leader>rv  :source ~/.vimrc<CR>`                                | Reload .vimrc
`map <silent> <F7> gg=G`` :delmarks z<CR>:echo "Reformatted."<CR>`    | Auto-indent whole file. Note that `<leader>=` is still available.
`nnoremap <C-e>  3<C-e>`                                              | Fast scrolling
`nnoremap <C-y>  3<C-y>`                                              |
`map <leader>g   :Gblame<CR>`                                         | Git blame
`map <leader>tt :wa<CR>:RunTestAgain<CR>`                             | Run tests. Note that `<leader>t` (run a focused test) and `<leader>T` (run the test file) are still available, but use the "testify" plugin, which will run the tests using vim-dispatch and put the results in the quickfix window for easy navigation. `<cr><cr>` is also an alias for `<leader>T`. Since the "testify" plugin keeps track of the last test that was ran, the `RunTestAgain` and `RunTestPrevious` are no longer needed.
`map <F12> :write<CR>:RunTest<CR>`                                    |
`imap <F12> <ESC><F12>`                                               |
`map <F11> :write<CR>:RunTestLine<CR>`                                |
`imap <F11> <ESC><F11>`                                               |
`map <F10> :write<CR>:RunTestAgain<CR>`                               |
`imap <F10> <ESC><F10>`                                               |
`map <F9> :write<CR>:RunTestPrevious<CR>`                             |
`imap <F9> <ESC><F9>`                                                 |
`map <Leader><Leader> :!`                                             | Easy access to the shell
`map <leader>a :call AckGrep()<CR>`                                   | AckGrep. QUESTION: Since Ack is no longer used, should these mappings be used for Ag instead?
`vmap <leader>a :call AckVisual()<CR>`                                |
`nmap du :diffupdate<CR>`                                             | Recalculate diff when it gets messed up.
`map <leader>u :GundoToggle<CR>`                                      | Gundo.vim
`nnoremap <silent> <leader>F :CtrlPClearAllCaches<CR>:CtrlPCurWD<CR>` | The CtrlP plugin already has mappings for these. From within the CtrlP window use `<c-f>` and `<c-b>` for switching between file, MRU and buffer modes. `<F5>` will refresh the cache when the CtrlP window is open.
`nnoremap <silent> <leader>bb :CtrlPBuffer<cr>`                       |
`map <D-e> :CtrlPBuffer<CR>`                                          |
`nnoremap <silent> <C-p> :CtrlPMRU<cr>`                               |
`nnoremap <silent> <D-P> :ClearCtrlPCache<cr>`                        |
`map <leader>jm :CtrlP app/models<CR>`                                | Open CtrlP starting from a particular path. These seem like they may be useful, but I'm not sure how often they're actually used.
`map <leader>jc :CtrlP app/controllers<CR>`                           |
`map <leader>jv :CtrlP app/views<CR>`                                 |
`map <leader>jh :CtrlP app/helpers<CR>`                               |
`map <leader>jl :CtrlP lib<CR>`                                       |
`map <leader>jp :CtrlP public<CR>`                                    |
`map <leader>js :CtrlP spec<CR>`                                      |
`map <leader>jf :CtrlP fast_spec<CR>`                                 |
`map <leader>jd :CtrlP db<CR>`                                        |
`map <leader>jC :CtrlP config<CR>`                                    |
`map <leader>jV :CtrlP vendor<CR>`                                    |
`map <leader>jF :CtrlP factories<CR>`                                 |
`map <leader>jT :CtrlP test<CR>`                                      |
`map <leader><C-N> :CtrlPCurWD<CR>`                                   | Mappings inherited from FuzzyFinder
`map <leader>n :CtrlPCurWD<CR>`                                       |
`map <D-N> :CtrlPCurWD<CR>`                                           |
`map <silent> <F19>WriteAll :silent! wall<CR>`                        | Write all
`nmap <leader>l :TagbarToggle<CR>`                                    | This has been remapped to `<F8>`.
`:nnoremap <silent> <F6> :YRShow<CR>`                                 | YankRing show registers
`nmap <leader>ld <Plug>LocalMakelet`                                  | Convert a word to to let(:word) { double(:word) }
