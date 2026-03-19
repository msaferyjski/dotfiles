return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre", "BufReadPre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<C-f>",
				function()
					require("conform").format({ async = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				c = { "clang_format" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			formatters = {
				clang_format = {
					prepend_args = { "--style={PointerAlignment: Left, IndentWidth: 4}" },
				},
			},
		},
	},
}
