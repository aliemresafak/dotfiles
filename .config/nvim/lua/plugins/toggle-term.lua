local config = function()
  require("toggleterm").setup({
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    open_mapping = [[<c-\>]],
  })
end

return { "akinsho/toggleterm.nvim", version = "*", config = config }
