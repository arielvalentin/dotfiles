if exists('g:loaded_cucumber')
    finish
endif
let g:loaded_cucumber = 1

command! -nargs=0 CucumberFindUnusedSteps :call cucumber#FindUnusedSteps()
