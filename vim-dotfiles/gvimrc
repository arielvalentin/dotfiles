"#############################################################################
" Settings
"#############################################################################
set autowriteall            " Save when doing various buffer-switching things.
set guicursor=a:blinkon0    " Turn off the blinking cursor
set guifont=Menlo:h14
set guioptions-=T           " Remove GUI toolbar
set guioptions-=e           " Use text tab bar, not GUI
set guioptions-=rL          " Remove scrollbars
set noballooneval           " Turn off ri tooltips that don't work with Ruby 1.9 yet

"#############################################################################
" Keymaps
"#############################################################################

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <D-<> :tabedit ~/.vimrc<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z> :earlier 1<CR>
map <D-Z> :later 1<CR>

" Jump to a new line in insert mode
imap <D-CR> <Esc>o

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down> :cn<CR>
map <M-D-Up> :cp<CR>

" Previous/next buffers
map <M-D-Left> :bp<CR>
map <M-D-Right> :bn<CR>

" Comment/uncomment lines
map <D-/> <plug>NERDCommenterToggle
imap <D-/> <Esc><plug>NERDCommenterToggle i

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>

" Cmd-Shift-(M)ethod - jump to a method (tag in current file)
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Cmd-Shift-F searches the whole project (like in TextMate, RubyMine, etc.)
map <D-F> :Ag<Space>

"#############################################################################
" Autocommands
"#############################################################################

" Save anytime we leave a buffer or MacVim loses focus.
autocmd BufLeave,FocusLost * silent! wall
