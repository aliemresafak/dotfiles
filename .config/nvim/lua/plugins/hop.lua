return {
	"phaazon/hop.nvim",
	branch = "v2", -- optional but strongly recommended
	config = function()
		local hop = require("hop")

		hop.setup({ keys = "etovxqpdygfblzhckisuran" })
		vim.keymap.set("n", "<leader><leader>w", ":HopWord<CR>")
		vim.keymap.set("n", "<leader><leader>b", ":HopWordBC<CR>")
		vim.keymap.set("n", "<leader><leader>l", ":HopLine<CR>")
	end,
}
