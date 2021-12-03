if exists('g:vimspector_jdtls_autoload')
	finish
endif
let g:vimspector_jdtls_autoload = 1

let s:jdt_ls_debugger_port = 0
function! vimspectorjdtls#StartDebugging() abort
	if s:jdt_ls_debugger_port <= 0
		" Get the DAP port
		let s:jdt_ls_debugger_port = luaeval('require("vimspectorjdtls").start_sync()')

		if s:jdt_ls_debugger_port == ''
			echom 'Unable to get DAP port - is JDT.LS initialized?'
			let s:jdt_ls_debugger_port = 0
			return
		endif
	endif

	" Start debugging with the DAP port
	call vimspector#LaunchWithSettings({ 'DAPPort': s:jdt_ls_debugger_port })
endfunction

" nnoremap <silent> <Plug>StartDebugging :<C-U>call <SID>StartDebugging()<CR>
" nmap <Leader>F5 <Plug>StartDebugging
