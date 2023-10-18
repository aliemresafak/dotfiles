local find_all_files_cmd = {
	"fd",
	"--type",
	"f",
	"--type",
	"l",
	"--follow",
	"--hidden",
}

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local themes = require("telescope.themes")
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				layout_strategy = "bottom_pane",
				layout_config = {
					height = vim.o.lines, -- maximally available lines
					width = vim.o.columns, -- maximally available columns
					prompt_position = "bottom",
				},
				mappings = {
					i = {
						["<esc>"] = actions.close,
					},
				},
			},
			pickers = {
				find_files = {
					find_command = find_all_files_cmd,
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>p", builtin.find_files, {})
		vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})
	end,
}
