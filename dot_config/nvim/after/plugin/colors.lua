function ColorTerminal()
	color = color or "catppuccin"

  vim.opt.termguicolors = true
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorTerminal()
