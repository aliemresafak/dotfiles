return {
  {
    'navarasu/onedark.nvim',
    config = function()
      require("onedark").load()
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("lualine").setup({
        sections = {
          lualine_b = { 'branch' }
        }
      })
    end
  }
}
