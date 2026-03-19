return {
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		priority = 10, 
		config = function()
			require("tiny-glimmer").setup()
		end,
	},
}
