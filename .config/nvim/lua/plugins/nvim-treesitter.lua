local function config()
  require("nvim-treesitter").setup({})
  -- require("nvim-treesitter.configs").setup({
  --   ensure_installed = { "python", "typescript", "go" },
  --   -- highlight = {
  --   --   enable = true,
  --   --   additional_vim_regex_highlighting = { "markdown" },
  --   -- },
  --   -- indent = { enable = false },
  --   -- autotag = { enable = true, enable_rename = true, enable_close = true, enable_close_on_slash = true, filetypes = { "html", "xml", "tsx", "jsx" } },
  --   -- rainbow = {
  --   --   enable = true,
  --   -- },
  -- })
end

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = config,
  dependencies = {
    "m-demare/hlargs.nvim",
    "windwp/nvim-ts-autotag",
  },
}
