return {
	{
	-- main colour scheme
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd([[colorscheme kanagawa-dragon]])
	end,
	},
	
	{
	"preservim/nerdtree",
	opts = {},
	cmd = "NERDTree",
	},

	{
	"dstein64/vim-startuptime",
	lazy = false,
	cmd = "StartupTime",
	init = function()
		vim.g.startuptime_tries = 10
	end,
	},
}
