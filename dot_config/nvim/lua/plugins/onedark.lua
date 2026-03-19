return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
        config = function () 
            vim.cmd("colorscheme onedark")
            vim.api.nvim_set_hl(0, "SnippetTabstop", {})
        end
	},
}
