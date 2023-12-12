return {
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("Comment").setup()
		end,
	},
  -- fold start
  {
    'jghauser/fold-cycle.nvim',
    config = function()
      require('fold-cycle').setup()
      vim.keymap.set('n', 'zC',
        function() return require('fold-cycle').close_all() end,
        { remap = true, silent = true, desc = 'Fold-cycle: close all folds' })
    end
  },
  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  },
  -- fold end
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
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
  },
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      local hop = require("hop")

      hop.setup({ keys = "etovxqpdygfblzhckisuran" })
      vim.keymap.set("n", "<leader><leader>w", ":HopWord<CR>")
      vim.keymap.set("n", "<leader><leader>l", ":HopLine<CR>")
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      local autopairs = require("nvim-autopairs")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")

      autopairs.setup({
        check_ts = true,
        ts_config = {
          javascript = { "template_string" },
        },
      })

      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
  { 
    "akinsho/toggleterm.nvim", 
    version = "*", 
    config = function()
      require("toggleterm").setup({
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        open_mapping = [[<c-\>]],
      })
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  }
}
