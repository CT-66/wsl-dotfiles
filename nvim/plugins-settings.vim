nmap \ :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:highlightedyank_highlight_duration = 100
highlight HighlightedyankRegion ctermbg=19
" 19, 20, 24, 25, 55, 60, 104, 129


" let g:deoplete#enable_at_startup = 1
let g:indent_guides_enable_on_vim_startup = 1
" let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#environment_path = "python.exe"
let g:airline_theme='onedark'
" let g:airline_theme='one'
let g:onedark_termcolors=256

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:better_whitespace_ctermcolor='red'
let g:better_whitespace_guicolor='darkred'
let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1

let g:nord_bold = 1
" visual mode selection color
autocmd ColorScheme * highlight Visual ctermbg=55

" good visual selections as of now-19, 20, 24, 25, 55, 60, 104, 129

augroup nord-theme-overrides
  autocmd!
  " comment colors
   autocmd ColorScheme nord highlight Comment ctermfg=245
augroup END

let g:airline_section_y=0
let g:airline_section_z=0

" Coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
