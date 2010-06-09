noremap <m-down> ]czz
inoremap <m-down> <C-O>]czz 

noremap <m-up> [czz
inoremap <m-up> <C-O>[czz

onoremap <C-F4> <C-C>:call KillBuffer()<CR> 

noremap <a-g>  <cr>:diffg<cr>
noremap <a-p>  <cr>:diffp<cr>

"set diffexpr=MyDiff()

function MyDiff()
    let s:fname_in = v:fname_in 
    let s:fname_new = v:fname_new 
    echo s:fname_in . " " . s:fname_new
    silent execute "!diff " . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction

function GetPutOnLeft()
endfunction
