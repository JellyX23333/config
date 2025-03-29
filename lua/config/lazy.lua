-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- personalising
vim.opt.number = true		-- number on the left
vim.opt.history=300
vim.opt.wrap=false
vim.opt.cursorline = true	-- highlight cursor line

vim.opt.smarttab = false	-- tab length set to 4
vim.opt.tabstop = 4

vim.opt.incsearch=true		-- search options
vim.opt.ignorecase=true
vim.opt.showmatch=true

vim.opt.wildmenu=true		-- command completion
vim.opt.wildmode={'list:longest', 'full'}


-- folding
vim.opt.foldmethod = 'indent'
vim.keymap.set('n', '<space>', 'za')

--snippets

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- autocommands
stdin=1
-- vim.api.nvim_create_autocmd("VimEnter",{
--	callback = function(args)
--		if len(args) == 0 and stdin == 0
--			--todo	
--		end
--	end,
-- })
vim.api.nvim_create_autocmd("BufEnter",{
	callback = function()
		-- todo
	end,
})

