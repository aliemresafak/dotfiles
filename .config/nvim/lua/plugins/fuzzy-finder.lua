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
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
  config = function(_, opts)
    local telescope = require("telescope")

    opts.defaults = {}
    opts.pickers = {
      diagnostics = {
        theme = "ivy",
        initial_mode = "normal",
        layout_config = {
          preview_cutoff = 9999
        }
      }
    }
    opts.extensions = {
      file_browser = {
        theme = "ivy",
        hijack_netrw = true,
        mappings = {}
      }
    }
    require("telescope").setup(opts)
    -- telescope.setup({
      -- defaults = {
      --   layout_strategy = "bottom_pane",
      --   layout_config = {
      --     height = vim.o.lines, -- maximally available lines
      --     width = vim.o.columns, -- maximally available columns
      --     prompt_position = "bottom",
      --   },
      --   mappings = {
      --     i = {
      --       ["<esc>"] = actions.close,
      --     },
      --   },
      -- },
      -- pickers = {
      --   find_files = {
      --     find_command = find_all_files_cmd,
      --   },
      -- },
    -- })
    require("telescope").load_extension("file_browser")
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>p", builtin.find_files, {})
    vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>b", builtin.buffers, {})
    vim.keymap.set("n", "<leader>f", ":Telescope file_browser<CR>", {})
  end,
}
