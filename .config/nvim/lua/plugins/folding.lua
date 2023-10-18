return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	config = function()
		require("ufo").setup({
			open_fold_hl_timeout = 150,
			close_fold_kinds = { "imports", "comment" },
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})
	end,
}
