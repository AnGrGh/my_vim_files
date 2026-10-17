"set_section
"-------------------
"augroup_section
"   filetype_c_cpp
"   filetype_pascal
"   filetype_makefile
"   filetype_asm
"-------------------
"autocmd_section
"-------------------
"let_variables_section
"-------------------
"vnoremap_section
"-------------------
"inoremap_section
"-------------------
"noremap_section
"-------------------
"noremap_section
"-------------------
"function_section
"-------------------
"iabbreviation_section
"-------------------
"abbreviation_command_help
"or in vim use command :h <Esc>
"-------------------
"call_plug_section
"-------------------
"colorscheme_section
"-------------------
"===============================================================
"set_section

set tabstop=4
set shiftwidth=4
set number
set smarttab
set foldcolumn=1
set smartindent
set colorcolumn=75
set tags=./tags;,tags;
set t_Co=256
set incsearch
set hlsearch
set relativenumber
set confirm
set helpheight=15

"Allows use undos history between buffers
set undolevels=500
set undofile
set undodir=~/undos_vim
"create undos_vim folder in ~/ directory
"and add it to autocmd section
"autocmd VimLeave * silent! !rm -f ~/undos_vim/*

"set nowrap
"set cmdheight=3


"CHANGING THE HIGHLIGHT (PAGE 394)
"You can change the highlighting of various objects by using the
"‘highlight’ option.  The format for this option is as follows:
"       
"       set highlight=l:DiffChange,i:DiffChange
"       
"set highlight=l:DiffChange,i:DiffChange,8:Function,@:Function
set highlight=l:colorsboxAquaSign,i:colorsboxAquaSign,8:Function,@:Function


"When you set the ‘showmode’ option, the Vim editor displays the current
"mode in the lower-left corner of the screen. To set this mode, use the
"following command:
"Now you enter an «fx» command to search for «x». When you type the «f»,
"an «f» appears in the lower-right corner.
set showcmd

"sometimes needed to be disable cause some colors not working
set termguicolors

"If you execute the following command, when you enter any type of
"bracket ((,),[,],{,},), Vim will cause the cursor to jump to the
"matching bracket briefly when entering:  (PAGE 278)
"set showmatch

"Making «g» the Default
"Note: This can broke some yours scripts.
set gdefault

"for disable tab stop
set expandtab

"Max symbols is 74 characters
"set textwidth=74

"Define How Much to Scroll
set scrolljump=5

"Case Sensitivity
set ignorecase
set smartcase

"Write files when needed
"set autowrite

"Shows the entire tag (the function prototype)
"set showfulltag

"The VIMinfo file (pg. 231)
set viminfo='1000,f1,h,%

"The 'complete' option controls where Vim searches for words.(Pg. 127)
"set complete=.,b,d,i,t,u,w

"===============================================================
"abbreviation_command_help
"
"notation	meaning		    equivalent	decimal value(s)	~
"-----------------------------------------------------------------------
"<nul>		zero			ctrl-@	  0 (stored as 10) *<nul>*
"<bs>		backspace		ctrl-h	  8	*backspace*
"<tab>		tab			ctrl-i	  9	*tab* *tab*
"							*linefeed*
"<nl>		linefeed		ctrl-j	 10 (used for <nul>)
"<cr>		carriage return		ctrl-m	 13	*carriage-return*
"<return>	same as <cr>				*<return>*
"<enter>		same as <cr>				*<enter>*
"<esc>		escape			ctrl-[	 27	*escape* *<esc>*
"<space>		space				 32	*space*
"<lt>		less-than		<	 60	*<lt>*
"<bslash>	backslash		\	 92	*backslash* *<bslash>*
"<Bar>		vertical bar		|	124	*<Bar>*
"<Del>		delete				127
"<CSI>		command sequence intro  ALT-Esc 155	*<CSI>*
"<xCSI>		CSI when typed in the GUI		*<xCSI>*
"
"<EOL>		end-of-line (can be <CR>, <NL> or <CR><NL>,
"		depends on system and 'fileformat')	*<EOL>*
"
"<Up>		cursor-up			*cursor-up* *cursor_up*
"<Down>		cursor-down			*cursor-down* *cursor_down*
"<Left>		cursor-left			*cursor-left* *cursor_left*
"<Right>		cursor-right			*cursor-right* *cursor_right*
"<S-Up>		shift-cursor-up
"<S-Down>	shift-cursor-down
"<S-Left>	shift-cursor-left
"<S-Right>	shift-cursor-right
"<C-Left>	control-cursor-left
"<C-Right>	control-cursor-right
"<F1> - <F12>	function keys 1 to 12		*function_key* *function-key*
"<S-F1> - <S-F12> shift-function keys 1 to 12	*<S-F1>*
"<Help>		help key
"<Undo>		undo key
"<Insert>	insert key
"<Home>		home				*home*
"<End>		end				*end*
"<PageUp>	page-up				*page_up* *page-up*
"<PageDown>	page-down			*page_down* *page-down*
"<kHome>		keypad home (upper left)	*keypad-home*
"<kEnd>		keypad end (lower left)		*keypad-end*
"<kPageUp>	keypad page-up (upper right)	*keypad-page-up*
"<kPageDown>	keypad page-down (lower right)	*keypad-page-down*
"<kPlus>		keypad +			*keypad-plus*
"<kMinus>	keypad -			*keypad-minus*
"<kMultiply>	keypad *			*keypad-multiply*
"<kDivide>	keypad /			*keypad-divide*
"<kEnter>	keypad Enter			*keypad-enter*
"<kPoint>	keypad Decimal point		*keypad-point*
"<k0> - <k9>	keypad 0 to 9			*keypad-0* *keypad-9*
"<S-...>		shift-key			*shift* *<S-*
"<C-...>		control-key			*control* *ctrl* *<C-*
"<M-...>		alt-key or meta-key		*meta* *alt* *<M-*
"<A-...>		same as <M-...>			*<A-*
"<D-...>		command-key (Macintosh only)	*<D-*
"<t_xx>		key with "xx entry in termcap
"
"-----------------------------------------------------------------------
"
"Note: The shifted cursor keys, the help key, and the undo key are only
"available on a few terminals.  On the Amiga, shifted function key 10
"produces a code (CSI) that is also used by key sequences.  It will be
"recognized only after typing another key.
"
"Note: There are two codes for the delete key.  127 is the decimal ASCII
"value for the delete key, which is always recognized.  Some delete keys
"send another value, in which case this value is obtained from the termcap
"entry "kD.  Both values have the same effect.  Also see |:fixdel|.
"
"Note: The keypad keys are used in the same way as the corresponding
""normal" keys.  For example, <kHome> has the same effect as <Home>.  If a
"keypad key sends the same raw key code as its non-keypad equivalent, it
"will be recognized as the non-keypad code.  For example, when <kHome>
"sends the same code as <Home>, when pressing <kHome> Vim will think <Home>
"was pressed.  Mapping <kHome> will not work then.
"
"===============================================================
"augroup_section
"
"To clear the highlighting, use the following command:
"   « :nohlsearch »
"
"Search highlighting is now turned off; matched text will not be
"                                                              highlighted.
"However, the highlighting will return when you use a search command.

augroup filetype_c_cpp
    autocmd!
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> #if 
        \#include<Space>".h"<Esc><Left><Left>i
    au BufReadPre *.c,*.cpp,*h inoremap <buffer> #is 
        \#include<Space><.h><Esc><Left><Left>i
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> hedk  
        \#include<Space>"<C-r>%<BS>h"<Esc>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> stdio #include <stdio.h>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> stdlib #include <stdlib.h>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ptk printf();<Esc>hi
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> fptk fprintf();<Esc>hi
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ddd %d
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> sss %s
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ccc %c
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ttt \t
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> nnn \n
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> cmk /*  */<Left><Left><Left>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ggg {<CR>}<Esc>ko
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> gkg {<Esc>jjO}<Esc>k
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> jkj <Esc>ja;<Esc>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> rtk 
        \return<Space>;<Esc>i0<Esc>:w<Cr>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> rrtk return<Space>;<Esc>i
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> rttk 
        \return;<Esc>:w<Cr>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ppk ->
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> resk ==<Space>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ltk <<Space>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> gtk ><Space>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> gek >=<Space>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> lek <=<Space>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> nek != 
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ifk if()<Esc>i
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> while<Space> while()<Esc>i
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> dok do {<CR>}<Esc>O
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> fori 
        \for(i = 0; i < ; i++)<Esc><Left><Left><Left><Left><Left>i
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> forr 
        \for()<Esc>i
    au BufReadPre *.h inoremap <buffer> dcsk 
        \#ifndef <C-r>%<BS><BS><Esc><Left>vawU<S-a>_H_SENTRY<CR>#define 
        \<C-r>%<BS><BS><Esc><Left>vawU<S-a>_H_SENTRY<CR><CR><CR><CR>
        \#endif<Esc>kk
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> irfj #include "<C-r>%<BS>h"
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> nil NULL
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> stvk static void 
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> randk 
        \1 + (int)(f*rand()/(RAND_MAX+1.0));<Esc>Ffs
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> maink 
        \int main()<CR>{<CR>}<Esc>O
    au BufReadPre *.c,*.cpp,*.h inoremap enumk enum {  };<Esc>hhi
    au BufReadPre *.c,*.cpp,*.h vnoremap cc <Esc>o#endif<Esc>gvo<Esc>O#if 0<Esc>
    au BufReadPre *.c,*.cpp,*.h vnoremap uc <Esc>ddgvo<Esc>dd<Esc>

    "put directive (#if 0) here
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> pdh <Esc>G%ddggpko
        \<CR><CR><Esc>ki
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> exork <Bar>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> exandk &
    "<Bar> is a | character
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> ork <Bar><Bar>
    au BufReadPre *.c,*.cpp,*.h inoremap <buffer> andk &&
augroup END

augroup filetype_pascal
    autocmd!
    au BufReadPre *.pas,*.pp inoremap <buffer> ptk write(
    au BufReadPre *.pas,*.pp inoremap <buffer> ptnk writeln(
    au BufReadPre *.pas,*.pp inoremap <buffer> =<Space> :=<Space>
    au BufReadPre *.pas,*.pp inoremap <buffer> == =
    au BufReadPre *.pas,*.pp inoremap <buffer> programk program 
        \<C-r>%i<BS><BS><BS><BS><BS>;<tab><tab><tab><tab><tab>{ <C-r>% }
    au BufReadPre *.pas,*.pp inoremap <buffer> while<Space> while  do<Esc>hhi
    au BufReadPre *.pas,*.pp inoremap <buffer> if<Space> if  then<Esc>hhhhi
    au BufReadPre *.pas,*.pp inoremap <buffer> fori for i := 1 to  do<Esc>hhi
    au BufReadPre *.pas,*.pp inoremap <buffer> {{ begin<CR>end;<Esc>ko<tab>
    au BufReadPre *.pas,*.pp inoremap <buffer> l{<CR> begin<CR>end.<Esc>ko<tab>
    au BufReadPre *.pas,*.pp inoremap <buffer> cm<Space> {  }<Esc>hi
    au BufReadPre *.pas,*.pp inoremap <buffer> intk integer
    au BufReadPre *.pas,*.pp inoremap <buffer> ppk ^
    au BufReadPre *.pas,*.pp inoremap <buffer> esk :=<Space>
    au BufReadPre *.pas,*.pp inoremap <buffer> resk =<Space>
    au BufReadPre *.pp inoremap <buffer> unitk 
        \unit <C-r>%i<BS><BS><BS><BS>;<tab><tab><tab><tab><tab>{ <C-r>% }
    au BufReadPre *.pas,*.pp inoremap <buffer> gtk ><Space>
    au BufReadPre *.pas,*.pp inoremap <buffer> ltk <<Space>
    au BufReadPre *.pas,*.pp inoremap <buffer> nek 
        \<C-R>=printf('<>')<CR><Space>

augroup END

augroup filetype_makefile
    autocmd!
    au BufReadPre Makefile setlocal noexpandtab
"    au BufReadPre makefile set noexpandtab
augroup END

augroup filetype_asm
    autocmd!
    au BufReadPre *.asm,*.s,*.inc setlocal noexpandtab
    au BufReadPre *.asm,*.inc inoremap <buffer> pdh 
        \<Esc>/%if<Space><CR>dd<C-o>pko<CR><CR><Esc>ki
    au BufReadPre *.asm,*.inc inoremap <buffer> textk section<Tab>.text<Esc>
    au BufReadPre *.asm,*.inc inoremap <buffer> datak section<Tab>.data<Esc>
    au BufReadPre *.asm,*.inc inoremap <buffer> bssk section<Tab>.bss<Esc>
    au BufReadPre *.s inoremap <buffer> cmk /*  */<Esc>hhi
    au BufReadPre *.s inoremap <buffer> datak .section<Tab>.data
    au BufReadPre *.s inoremap <buffer> textk .section<Tab>.text
    au BufReadPre *.s inoremap <buffer> rodatak .section<Tab>.rodata
    au BufReadPre *.s inoremap <buffer> bssk .section<Tab>.bss
augroup END

"autocmd BufLeave * :w
"This is not right - «autocmd FileWritePre * :call DateInsert()»

"===============================================================
"autocmd_section

autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set relativenumber
autocmd VimLeave * silent! !rm -f ~/undos_vim/*

"===============================================================
"let_variables_section

"let maplocalleader = "-"

"===============================================================
"vnoremap_section

"vnoremap cc :norm i//<CR>
"vnoremap uc :norm xx<CR>

"===============================================================
"inoremap_section

inoremap bbf <Esc>:buffers<CR>
inoremap bf <Esc>:buffer<Space>
inoremap jj <Esc>
inoremap kk <Esc>
inoremap ww <Esc>
inoremap bb <Esc>
inoremap vimrc <Esc>:e ~/.vimrc<Cr>
inoremap w<CR> <Esc>:w<CR>
inoremap wf<Space> <Esc><C-G>
inoremap nohh <Esc>:noh<CR>
inoremap (( ()<Esc>i
inoremap )) );
inoremap )( () {<CR>}<Esc>kf)i
inoremap ooo <Esc>o
inoremap zzz _
inoremap aaa <Esc>A
inoremap mmm []<Esc>i
inoremap lll <C-o>l


"Go back
inoremap gbk <Esc><C-^>

"Next buffer
inoremap nbk <Esc>:w<Cr>:bnext<Cr>

"Previous buffer
inoremap pbk <Esc>:w<Cr>:bNext<Cr>

"Search for a word in tags file
inoremap stk <C-x><C-]>

"Search for a line
inoremap slk <C-x><C-l>

"Update vimrc file
inoremap upvck <Esc>:source ~/.vimrc<Cr>

"Shift text left
inoremap stlk <C-o><<

"Shift text right
inoremap strk <C-o>>>

"Put word here
inoremap pwhk <Esc>:put<Cr>

inoremap esk =<Space>

"Get cursor up
inoremap gcuk <Esc>O

"===============================================================
"noremap_section

"noremap <localleader>f <Esc>:noh<CR>

"===============================================================
"noremap_section

"To execute it use this command \+<F5>
noremap<Leader>t <C-w><C-]><C-w>T    
"map<Leader><F5> <C-w><C-]><C-w>T    

"===============================================================
"function_section

"function DateInsert()
"    insert the date at the end($) of the file.
"    $read !date
"endfunction

function DisplayName(name)
    echom "Hello! My name is:"
    echom a:name
endfunction

"function Min(num1, num2)
"    if a:num1 < a:num2
"        let smaller = a:num1
"        let smaller = "Meow!"
"    else
"        let smaller = a:num2
"    endif
"    return smaller
"endfunction

"function Meow()
"    return "Meow!"
"endfunction

"===============================================================
"iabbreviation_section

iab teh the
iab tou the
iab hte the
iab adn and
iab nad and
iab oyu you
iab tihs this
iab preserve <Esc>:preserve

"===============================================================
"call_plug_section

"call plug#begin()
"Plug 'flazz/vim-colorschemes'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-colorscheme-switcher'
"call plug#end()

"call Play() calit

"===============================================================
"colorscheme_section

"colorscheme calmar256-dark
"colorscheme colorsbox-material
"colorscheme colorsbox-stbright
colorscheme test_colorsbox-stbright
"colorscheme my_own_syntax_highlight
"colorscheme darkblue
"colorscheme base16-railscasts
"colorscheme brogrammer
"colorscheme bensday
"colorscheme billw
"colorscheme bitterjug
"colorscheme blackboard
"colorscheme blackdust
"colorscheme blaquemagick
"colorscheme blazer
"colorscheme blues
"colorscheme busierbee

"===============================================================
