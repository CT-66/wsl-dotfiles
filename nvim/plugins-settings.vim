" nerdtree
nmap \ :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" -----

" highlighted yank
let g:highlightedyank_highlight_duration = 100

" -----

" let g:deoplete#enable_at_startup = 1
let g:indent_guides_enable_on_vim_startup = 1
" let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#environment_path = "python.exe"
let g:airline_theme='onedark'
" let g:airline_theme='one'
let g:onedark_termcolors=256

" -----

" better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:better_whitespace_guicolor='darkred'
let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1

" -----

" coc.nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" -----

" lualine
:lua << EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = {},
    section_separators = {},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'diagnostics'},
    lualine_z = {}
  },
  extensions = {}
}
EOF

" -----

" hexokinase
let g:Hexokinase_highlighters = [ 'virtual' ]

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript', 'json']

" -----

" neoscroll
" :lua << EOF
" require('neoscroll').setup({

"     mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
"                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
"     hide_cursor = true,          -- Hide cursor while scrolling
"     stop_eof = true,             -- Stop at <EOF> when scrolling downwards
"     use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
"     respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
"     cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
"     easing_function = nil,        -- Default easing function
"     pre_hook = nil,              -- Function to run before the scrolling animation starts
"     post_hook = nil,              -- Function to run after the scrolling animation ends
" })
" EOF

" -----
