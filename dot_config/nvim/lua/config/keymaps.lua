local map = vim.keymap.set

map("n", "<leader>c", "<cmd>nohlsearch<CR>", { desc = "Clear highlights" })
map("n", "<leader>sa", "ggVG<CR>", { desc = "Save all", nowait = true })
map("n", "<C-s>", function()
	vim.cmd("write")
end, { desc = "Save" })
map("n", "S", function()
	vim.cmd("wall")
end, { desc = "Save all", nowait = true })

-- lsp
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to delcaration" })
map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover over" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Perform code action" })
map("n", "<leader>of", vim.diagnostic.open_float, { desc = "Open float" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Set local list " })

-- auto-save
map("n", "<leader>as", "<cmd>ASToggle<CR>", { desc = "Auto save" })

-- nvim-tree
map("n", "<leader>e", function()
	require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle file explorer" })

map("n", "<leader>t", function()
	require("nvim-tree.api").tree.open()
end, { desc = "Focus/Open file explorer" })

-- bufferline
map("n", "<tab>", "<cmd>bnext<CR>", { desc = "Go to next tab " })
map("n", "<S-tab>", "<cmd>bprev<CR>", { desc = "Go to previous tab" })
map("n", "<C-c>", "<cmd>bdelete<CR>", { desc = "Close tab", nowait = true })

-- automation
map("n", "<leader>rp", "<cmd>TermExec cmd='just run'<CR>", { desc = "Execute run recipe", nowait = true })
map("n", "<leader>bp", "<cmd>TermExec cmd='just build'<CR>", { desc = "Execute build recipe", nowait = true })

-- debugger
map("n", "<leader>dt", function()
	require("dap").toggle_breakpoint()
end)

map("n", "<leader>dc", function()
	require("dap").continue()
end)

map("n", "<leader>di", function()
	require("dap").step_into()
end)

map("n", "<leader>do", function()
	require("dap").step_over()
end)

map("n", "<leader>du", function()
	require("dap").step_out()
end)

map("n", "<leader>dr", function()
	require("dap").repl.open()
end)

map("n", "<leader>dl", function()
	require("dap").run_last()
end)

map("n", "<leader>dq", function()
	require("dap").terminate()
	require("dapui").close()
	require("nvim-dap-virtual-text").toggle()
end)

map("n", "<leader>db", function()
	require("dap").list_breakpoints()
end)

map("n", "<leader>de", function()
	require("dap").set_exception_breakpoints({ "all" })
end)
