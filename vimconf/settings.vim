" Personal Setting Configurations

" Set 24-Bit RGB Color for TUI
set termguicolors

" Set relative numbers for current line
set nu rnu

" remove tilde at the end of files
set fillchars=eob:\ 

" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" Recently vim can merge signcolumn and number column into one
set signcolumn=number

" Set good timeoutlen
set tm=0

lua << EOF
-- Use impatient for faster loads
require('impatient')

-- Load different plugins
require('plugins')

-- Set Base16 themes (important, changed grey (Base03) to #2d2d2d)
local base16 = require('base16')

local b16cd = base16.theme_from_array  {
   "151515"; "151515"; "2d2d2d"; "2d2d2d";
   "d0d0d0"; "d0d0d0"; "e0e0e0"; "1f1f1f";
   "AC4142"; "F4BF75"; "F4BF75"; "90A959";
   "75B5AA"; "6A9FB5"; "AA759F"; "F4BF75";
}

local mono_dark = base16.theme_from_array {
    "111111", "111111", "222222", "222222",
    "bbbbbb", "bbbbbb", "cccccc", "151515",
    "8e8e8e", "777777", "777777", "999999",
    "828282", "b0b0b0", "a4a4a4", "777777"
}

local mono_light = base16.theme_from_array {
    "f0f0f0", "f0f0f0", "d0d0d0", "d0d0d0",
    "0f0f0f", "0f0f0f", "1f1f1f", "dddddd",
    "4b4b4b", "696969", "696969", "3c3c3c",
    "5a5a5a", "1e1e1e", "2d2d2d", "696969"
}

base16(mono_dark, true)

EOF
highlight NvimTreeWinSeparator guifg=#151515 
highlight NvimTreeCursorColumn guibg=#151515 
highlight VertSplit guifg=#151515 guibg=#151515
