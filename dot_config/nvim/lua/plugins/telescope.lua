return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "master",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")

			telescope.setup({
				defaults = {
					file_ignore_patterns = {
						".git",
					},
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
				extensions = {
					file_browser = {
						hijack_netrw = true,
					},
				},
			})

			telescope.load_extension("file_browser")

			local builtin = require("telescope.builtin")
			local map = vim.keymap.set
			map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files", nowait = true })
			map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            map("n", "<leader>fb", telescope.extensions.file_browser.file_browser, { desc = "Telescope file browser" })
			map("n", "<leader>fl", builtin.buffers, { desc = "Telescope buffers" })
			map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
	},
}
