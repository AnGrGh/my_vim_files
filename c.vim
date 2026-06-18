syn keyword cFunctions printf scanf
"syn region Conceal start=/(/ skip=/\\"/ end=/)/

hi link cFunctions Function

hi Function term=standout cterm=bold ctermfg=175  gui=bold guifg=#c397d8

