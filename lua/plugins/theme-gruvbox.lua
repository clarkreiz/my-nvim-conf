return {
	"morhetz/gruvbox", -- Оригинальная Gruvbox
	config = function()
		vim.cmd("colorscheme gruvbox") -- Установить тему
		vim.opt.background = "dark" -- Использовать тёмную версию
	end,
}
