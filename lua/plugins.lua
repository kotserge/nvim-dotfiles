packer = require("packer")
local use = packer.use
packer.reset()

return packer.startup({
	function(use)
		-- Start: Theming

		-- bufferline [top portion]
		use({
			"akinsho/bufferline.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = [[require('plugins.bufferline')]],
		})

		-- statusline [bottom portion]
		use({
			"hoob3rt/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", "SmiteshP/nvim-gps" },
			config = [[require('plugins.lualine')]],
		})

		-- Base 16 Theme
		use({
			"norcalli/nvim-base16.lua",
		})

		-- Dev Icons
		use({
			"kyazdani42/nvim-web-devicons",
			-- config = [[require('plugins.devicons')]]
		})

		-- End: Theming

		-- Start: Useful IDE Style Plugins

		-- File Explorer
		use({
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons", -- optional, for file icon
			},
			config = [[require('plugins.nvim-tree')]],
		})

		-- File Searcher
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
			config = [[require('plugins.telescope')]],
		})

		-- Breadcrumb Style (used with lualine)
		use({
			"SmiteshP/nvim-gps",
			requires = "nvim-treesitter/nvim-treesitter",
			config = [[require('plugins.nvim-gps')]],
		})

		-- End: Useful IDE Style Plugins

		-- Start: Useful Lang. (Syntax/Semantic) Plugins

		-- treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
			config = [[require('plugins.nvim-treesitter')]],
		})

		-- LSP proivder
		use({
			"neoclide/coc.nvim",
			branch = "release",
		})

		-- End: Useful Lang. (Syntax/Semantic) Plugins

		-- Start: Other Plugins

		-- Packet Manager
		use({
			"wbthomason/packer.nvim",
		})

		-- Githubs CoPilot
		use({
			"github/copilot.vim",
		})

		-- SPEED(up loading time)
		use({
			"lewis6991/impatient.nvim",
		})

		-- Which Key
		use({
			"folke/which-key.nvim",
			config = [[require('plugins.which-key')]],
		})

		-- End: Other Plugins
	end,
	config = {
		display = {
			open_fn = require("packer.util").float,
		},
	},
})
