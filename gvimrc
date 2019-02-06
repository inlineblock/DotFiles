scriptencoding utf-8
set guioptions=ae
set guifont=ProFontX:h13.00
""set guifont=Monaco:h10.00
"colors jolokai
""colors pyte
set transparency=0
set antialias
set cursorline
set cursorcolumn
set fileencoding=utf-8
set encoding=utf-8

hi ColorColumn guibg=Black

let g:ctrlp_buffer_func = { 'enter': 'LargeFontHighlightOn', 'exit':  'LargeFontHighlightOff', }

function LargeFontHighlightOn()
  hi CursorLine guibg=#005588
endfunction

function LargeFontHighlightOff()
  hi CursorLine guibg=#293739
endfunction
