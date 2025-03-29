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
	cmd = "StartupTime",
	init = function()
		vim.g.startuptime_tries = 10
	end,
	},
}
