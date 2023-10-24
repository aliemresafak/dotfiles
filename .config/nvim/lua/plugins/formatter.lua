return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 100,
				lsp_fallback = true,
				async = false,
			},
		})
	end,
}
