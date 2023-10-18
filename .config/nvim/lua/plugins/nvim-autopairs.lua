local function config()
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
end

return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	config = config,
}
