if exists('g:vimspector_jdtls')
	finish
endif
let g:vimspector_jdtls = 1

" let s:jdt_ls_debugger_port = 0
" function! s:StartDebugging()
" 	if s:jdt_ls_debugger_port <= 0
" 		" Get the DAP port
" 		let s:jdt_ls_debugger_port = luaeval('require("vimspector-jdtls").start_sync()')

" 		if s:jdt_ls_debugger_port == ''
" 			echom 'Unable to get DAP port - is JDT.LS initialized?'
" 			let s:jdt_ls_debugger_port = 0
" 			return
" 		endif
" 	endif

" 	" Start debugging with the DAP port
" 	call vimspector#LaunchWithSettings({ 'DAPPort': s:jdt_ls_debugger_port })
" endfunction

command! StartDebugging call vimspectorjdtls#StartDebugging()

" nnoremap <silent> <Plug>StartDebugging :<C-U>call <SID>StartDebugging()<CR>
" nmap <Leader>F5 <Plug>StartDebugging
