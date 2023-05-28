" Personal Setting Configuarations

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

base16(b16cd, true)

EOF
highlight NvimTreeWinSeparator guifg=#151515 
highlight NvimTreeCursorColumn guibg=#151515 
highlight VertSplit guifg=#151515 guibg=#151515
