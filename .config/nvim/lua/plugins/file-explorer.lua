local function config()
	require("nvim-tree").setup({
		sync_root_with_cwd = true,
		reload_on_bufenter = true,
		respect_buf_cwd = true,
		hijack_cursor = true,
		modified = {
			enable = true,
		},
		diagnostics = {
			enable = true,
			icons = {
				hint = "▸",
				info = "›",
				warning = "▴",
				error = "▪",
			},
			severity = {
				min = vim.diagnostic.severity.WARN,
			},
			show_on_dirs = true,
		},
		view = {
			adaptive_size = true,
		},
		renderer = {
			group_empty = true,
			highlight_git = true,
			highlight_modified = "none",
			icons = {
				show = {
					file = true,
					folder = true,
					folder_arrow = false,
					git = false,
				},
				glyphs = {
					bookmark = "⋄",
					modified = "+",
					default = "",
					folder = {
						default = "▪",
						open = "-",
						empty = "▫",
						empty_open = "-",
						symlink = "▸",
						symlink_open = "▼",
					},
					git = {
						unstaged = "✗",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "?",
						deleted = "∅",
						ignored = "◌",
					},
				},
			},
			special_files = {
				"Cargo.toml",
				"Makefile",
				"README.md",
				"readme.md",
				"justfile",
			},
		},
	})
end

local function is_nvim_tree_focused()
	local bufname = vim.api.nvim_buf_get_name(0)
	return not not bufname:find("NvimTree")
end

return {
	"kyazdani42/nvim-tree.lua",
	config = config,
	keys = {
		{
			"<leader>f",
			function()
				local api = require("nvim-tree.api")
				api.tree.toggle()
			end,
		},
	},
	dependencies = { "kyazdani42/nvim-web-devicons" },
}
