local colors = {
	black = "#151515",
	white = "#D0D0D0",
	red = "#AC4142",
	magenta = "#AA759F",
	green = "#90A959",
	blue = "#6A9FB5",
	cyan = "#75B5AA",
	yellow = "#F4BF75",
	gray = "#515151",
	darkgray = "#2d2d2d",
	lightgray = "#595959",
	inactivegray = "#3d3d3d",
}

local base16_classic_dark = {
	normal = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	insert = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	visual = {
		a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	replace = {
		a = { bg = colors.magenta, fg = colors.black, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	command = {
		a = { bg = colors.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.black, fg = colors.darkgray, gui = "bold" },
		b = { bg = colors.black, fg = colors.darkgray },
		c = { bg = colors.black, fg = colors.darkgray },
	},
}

local gps = require("nvim-gps")
require("lualine").setup({
	options = {
		theme = base16_classic_dark,
		section_separators = "",
		component_separators = "",
		disabled_filetypes = { "" },
	},

	sections = {
		lualine_c = {
			{ gps.get_location, condition = gps.is_available },
		},
	},
})
