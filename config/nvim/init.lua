--============================
--       Neovim Config
--============================

-- Lazy
local lazypath = vim.fn.stdpath(
	"data"
) .. "/lazy/lazy.nvim"

if
	not
	vim.loop.fs_stat(
		lazypath
	) then
  	vim.fn.system(
		{
    			"git",
    			"clone",
    			"--filter=blob:none",
    			"https://github.com/folke/lazy.nvim.git",
    			"--branch=stable",
    			lazypath,
  		}
	)
end

vim.opt.rtp:prepend(
	lazypath
)

require(
	"lazy"
).setup(
	{
		"vyfor/cord.nvim"
	}
)

-- Config
vim.keymap.set(
	'n',
	'<M-w>',
	'<Cmd>write<CR>',
	{
		desc = 'Save file'
	}
)
vim.keymap.set(
	'n',
	'<A-q>',
	':q<CR>',
	{
		desc = 'Quit Neovim'
	}
)

vim.o.number = true

vim.cmd(
	[[highlight LineNr guifg=#a6adc8]]
)

vim.opt.shortmess:append(
	"I"
)

vim.o.laststatus = 2

_G.file_icon = function()
  	local icons = {
    		lua = "",
    		python = "",
    		cpp = "",
    		c = "",
    		javascript = "",
    		typescript = "",
    		html = "",
    		css = "",
    		json = "",
    		jsonc = "",
    		hyprlang = "",
    		nix = "",
    		xml = "󰗀",
    		rasi = "",
    		kitty = "",
    		conf = "",
    		dosini = "",
    		toml = "",
		qml = "",
		markdown = "󰍔"
  	}
  	local ft = vim.bo.filetype
  	local icon = icons[ft] or ""
  	if icon ~= "" then
    		return icon .. " " .. ft
  	else
    		return ft
  	end
end

vim.o.laststatus = 2

vim.api.nvim_set_hl(
	0,
	"Normal",
	{
		bg = "#1e1e2e"
	}
)

vim.cmd(
	"hi StatusLine guibg=#1e1e2e guifg=#a6adc8"
)

vim.o.statusline = "%f  %{v:lua.file_icon()} %m %= %p%% %c:%l"
