" make
set makeprg=gmake
:command -nargs=* Make make! --no-print-directory <args>
""| cwindow 10
autocmd QuickFixCmdPost * :botright cwindow 15
imap <c-b> <c-o>:Make<cr> 
map <c-b> <c-o>:Make<cr>
map <c-e> <c-o>:cNext<cr>


"function MyMake()

    "let l:makeCmd = "!sh ~/.vim/backgroundMake.sh " . v:servername . " &"
    "exe l:makeCmd

"endfunc
