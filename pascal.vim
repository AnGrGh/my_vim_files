syn keyword pasFunctions write writeln
"syn region Conceal start=/(/ skip=/\\"/ end =/)/
hi link pasFunctions Function

hi Function term=standout cterm=bold ctermfg=175 gui=bold guifg=#c397d8
