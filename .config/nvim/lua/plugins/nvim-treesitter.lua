local function config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "python", "typescript", "go" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "markdown" },
		},
		indent = { enable = false },
		autotag = { enable = true },
		rainbow = {
			enable = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = config,
	dependencies = {
		"p00f/nvim-ts-rainbow",
		{
			"m-demare/hlargs.nvim",
			config = true,
		},
		{
			"windwp/nvim-ts-autotag",
			ft = {
				"html",
				"svelte",
			},
			config = true,
		},
	},
}
