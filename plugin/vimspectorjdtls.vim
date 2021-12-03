if exists('g:vimspector_jdtls')
	finish
endif
let g:vimspector_jdtls = 1

command! VimspectorJdtlsStartDebug call vimspectorjdtls#StartDebugging()

nmap <Leader>F5 <Esc>:VimspectorJdtlsStartDebug<CR>
