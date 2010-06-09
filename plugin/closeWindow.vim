" Ctrl - F4 "
function KillBuffer()
	if g:ccaseDiff
		"in clearcase diff mode"
		let g:ccaseDiff = 0
		if &filetype == "conf" || &filetype == "" 
			"in file from clearcase"
			let l:ccaseOrigBuffer = bufnr(buffer_name(buffer_name("#")))	
			bdelete
			let l:bufferChange = "buffer ". l:ccaseOrigBuffer
			exe l:ccaseOrigBuffer 
			diffoff	
			set wrap!	
		else
			"in file in current view"
			let l:ccaseTempBuffer = bufnr(buffer_name(buffer_name("#")))
			let l:bufferWipe = "bdelete ". l:ccaseTempBuffer 
			exe l:bufferWipe
		endif
		
	elseif &buflisted && !(&filetype == "qf") && !(&buftype == "nofile") && !&diff
		"visible buffer with diff off
		Bclose
	else
		"non visible buffer
		if &diff
		    "diff on"
		    diffoff
		    set wrap!
		endif
		
		wincmd c
	endif
endfunction

noremap <C-F4> :call KillBuffer()<CR>
inoremap <C-F4> <C-O>:call KillBuffer()<CR> 
cnoremap <C-F4> <C-C>:call KillBuffer()<CR> 
onoremap <C-F4> <C-C>:call KillBuffer()<CR> 
