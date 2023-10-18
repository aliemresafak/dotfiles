return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- import comment plugin safely
		require("Comment").setup()
	end,
}
