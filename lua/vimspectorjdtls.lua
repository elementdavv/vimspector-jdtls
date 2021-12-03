local M = {}

function M.start()
	vim.lsp.buf_request(
		0,
		'workspace/executeCommand',
		{command = 'vscode.java.startDebugSession'},
		function(err, _, resp)
			assert(not err, vim.inspect(err))
			print(vim.inspect(resp))
		end
	)
end

function M.start_sync()
	local resp = vim.lsp.buf_request_sync(
		0,
		'workspace/executeCommand',
		{command = 'vscode.java.startDebugSession'},
		100
	)
	if resp and resp[1] and resp[1].result then
		return resp[1].result
	else
		return ''
	end
end

return M
