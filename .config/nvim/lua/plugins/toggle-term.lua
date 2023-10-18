local config = function()
	require("toggleterm").setup({
		open_mapping = "<leader>t",
	})
end

return { "akinsho/toggleterm.nvim", version = "*", config = config }
