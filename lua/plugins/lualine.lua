local dark = {
    black        = '#111111',
    white        = '#bbbbbb',
    red          = '#8e8e8e',
    magenta      = '#a4a4a4',
    green        = '#999999',
    blue         = '#b0b0b0',
    cyan         = '#828282',
    yellow       = '#777777',
    gray         = '#515151',
    darkgray     = '#2d2d2d',
    lightgray    = '#595959',
    inactivegray = '#3d3d3d',
}

local light = {
    black        = '#f0f0f0',
    white        = '#0f0f0f',
    red          = '#4b4b4b',
    magenta      = '#2d2d2d',
    green        = '#3c3c3c',
    blue         = '#1e1e1e',
    cyan         = '#5a5a5a',
    yellow       = '#696969',
    gray         = '#3d3d3d',
    darkgray     = '#595959',
    lightgray    = '#2d2d2d',
    inactivegray = '#515151',
}

local base16 = {
    black        = '#151515',
    white        = '#D0D0D0',
    red          = '#AC4142',
    magenta      = '#AA759F',
    green        = '#90A959',
    blue         = '#6A9FB5',
    cyan         = '#75B5AA',
    yellow       = '#F4BF75',
    gray         = '#515151',
    darkgray     = '#2d2d2d',
    lightgray    = '#595959',
    inactivegray = '#3d3d3d',
}

local base = dark

local theme = {
    normal = {
        a = { bg = base.blue, fg = base.black, gui = 'bold' },
        b = { bg = base.black, fg = base.white },
        c = { bg = base.black, fg = base.white }
    },
    insert = {
        a = { bg = base.green, fg = base.black, gui = 'bold' },
        b = { bg = base.black, fg = base.white },
        c = { bg = base.black, fg = base.white }
    },
    visual = {
        a = { bg = base.yellow, fg = base.black, gui = 'bold' },
        b = { bg = base.black, fg = base.white },
        c = { bg = base.black, fg = base.white }
    },
    replace = {
        a = { bg = base.magenta, fg = base.black, gui = 'bold' },
        b = { bg = base.black, fg = base.white },
        c = { bg = base.black, fg = base.white }
    },
    command = {
        a = { bg = base.red, fg = base.black, gui = 'bold' },
        b = { bg = base.black, fg = base.white },
        c = { bg = base.black, fg = base.white }
    },
    inactive = {
        a = { bg = base.black, fg = base.darkgray, gui = 'bold' },
        b = { bg = base.black, fg = base.darkgray },
        c = { bg = base.black, fg = base.darkgray }
    }
}


local gps = require("nvim-gps")
require('lualine').setup {
    options = {
        theme = theme,
        section_separators = '',
        component_separators = '',
        disabled_filetypes = { '' }
    },

    sections = {
        lualine_c = {
            { gps.get_location, condition = gps.is_available },
        }
    },

}
