if exists('g:loaded_alternative')
    finish
endif
let g:loaded_alternative = 1

command! -nargs=0 Alternative call alternative#Run()
