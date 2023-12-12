return {
  "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },    
    -- run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},  -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                personal = "~/Personal",
                rakort = "~/Workspace/rakort/notes"
              },
            },
          },
        },
      })
    end
}
