" Vim Color File
" Name: colorful.vim (customized from material.vim)
" Maintainer: https://github.com/tknightz/colorful.vim



" Clear other highlight
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'colorful'
let g:colorful_italic = get(g:, 'colorful_italic', 1)
let g:colorful_transparent = get(g:, 'colorful_transparent', 0)

" Colors scheme
let s:bg = { 'gui': '#121212', 'cterm': 232 }
let s:fg = { 'gui': '#eeffff', 'cterm': 231 }
let s:invisibles = { 'gui': '#65738e', 'cterm': 66 }
let s:comments = { 'gui': '#546e7a', 'cterm': 145 }
let s:caret = { 'gui': '#ffcc00', 'cterm': 12 }
let s:selection = { 'gui': '#2c3b41', 'cterm': 239 }
let s:guides = { 'gui': '#37474f', 'cterm': 17 }
let s:line_numbers = { 'gui': '#37474f', 'cterm': 145 }
let s:line_highlight = { 'gui': '#27343a', 'cterm': 235 }
let s:white = { 'gui': '#ffffff', 'cterm': 231 }
let s:black = { 'gui': '#000000', 'cterm': 232 }
let s:light_red = { 'gui': '#ff7e7e', 'cterm': 203 }
let s:red = { 'gui': '#ff5370', 'cterm': 203 }
let s:dark_red = { 'gui': '#e20000', 'cterm': 203 }
let s:orange = { 'gui': '#ff8e0c', 'cterm': 209 }
let s:dark_orange = { 'gui': '#c96f00', 'cterm': 209 }
let s:light_yellow = { 'gui': '#fff672', 'cterm': 10 }
let s:yellow = { 'gui': '#ffcb6b', 'cterm': 11 }
let s:light_green = { 'gui': '#3eff7b', 'cterm': 2 }
let s:green = { 'gui': '#c3e88d', 'cterm': 2 }
let s:dark_green = { 'gui': '#67d745', 'cterm': 4 }
let s:cyan = { 'gui': '#89ddff', 'cterm': 117 }
let s:dark_cyan = { 'gui': '#558a9f', 'cterm': 117 }
let s:blue = { 'gui': '#82aaff', 'cterm': 111 }
let s:dark_blue = { 'gui': '#3a56a2', 'cterm': 111 }
let s:paleblue = { 'gui': '#b2ccd6', 'cterm': 152 }
let s:purple = { 'gui': '#c792ea', 'cterm': 176 }
let s:brown = { 'gui': '#d16d60', 'cterm': 137 }
let s:pink = { 'gui': '#ff708a', 'cterm': 204 }
let s:violet = { 'gui': '#f448eb', 'cterm': 139 }
let s:grey = { 'gui': '#546e7a', 'cterm': 145 }

let g:colorful_colorscheme_map = {}
let g:colorful_colorscheme_map.bg = s:bg
let g:colorful_colorscheme_map.fg = s:fg
let g:colorful_colorscheme_map.invisibles = s:invisibles
let g:colorful_colorscheme_map.comments = s:comments
let g:colorful_colorscheme_map.caret = s:caret
let g:colorful_colorscheme_map.selection = s:selection
let g:colorful_colorscheme_map.guides = s:guides
let g:colorful_colorscheme_map.line_numbers = s:line_numbers
let g:colorful_colorscheme_map.line_highlight = s:line_highlight
let g:colorful_colorscheme_map.white = s:white
let g:colorful_colorscheme_map.black = s:black
let g:colorful_colorscheme_map.red = s:red
let g:colorful_colorscheme_map.light_red = s:light_red
let g:colorful_colorscheme_map.dark_red = s:dark_red
let g:colorful_colorscheme_map.orange = s:orange
let g:colorful_colorscheme_map.yellow = s:yellow
let g:colorful_colorscheme_map.light_yellow = s:light_yellow
let g:colorful_colorscheme_map.green = s:green
let g:colorful_colorscheme_map.dark_green = s:dark_green
let g:colorful_colorscheme_map.cyan = s:cyan
let g:colorful_colorscheme_map.blue = s:blue
let g:colorful_colorscheme_map.paleblue = s:paleblue
let g:colorful_colorscheme_map.purple = s:purple
let g:colorful_colorscheme_map.brown = s:brown
let g:colorful_colorscheme_map.pink = s:pink
let g:colorful_colorscheme_map.violet = s:violet


" Function definition
function! s:SetHighlight(group, fg, bg, attr)
  let l:attr = a:attr

  if !g:colorful_italic && l:attr == 'italic'
    let l:attr = 'none'
  endif

  if empty(l:attr)
    let l:attr = 'none'
  endif

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg.gui . ' ctermfg=' . a:fg.cterm
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg.gui . ' ctermbg=' . a:bg.cterm
  endif

  if !empty(l:attr)
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfunction


" Variable manipulate

if (g:colorful_transparent == 1)
  let s:bg = { 'gui': 'none', 'cterm': 'none' }
endif


call s:SetHighlight('ColorColumn', '', s:invisibles, '')
call s:SetHighlight('Cursor', s:bg, s:caret, '')
call s:SetHighlight('CursorColumn', '', s:line_highlight, '')
call s:SetHighlight('CursorLine', '', s:line_highlight, '')
call s:SetHighlight('CursorLineNr', s:yellow, '', '')
call s:SetHighlight('Directory', s:blue, '', '')
call s:SetHighlight('DiffAdd', s:green, s:bg, '')
call s:SetHighlight('DiffDelete', s:red, s:bg, '')
call s:SetHighlight('DiffChange', s:yellow, s:bg, '')
call s:SetHighlight('DiffText', s:orange, s:bg, '')
call s:SetHighlight('ErrorMsg', s:bg, s:red, 'bold')
call s:SetHighlight('FoldColumn', s:line_numbers, s:bg, '')
call s:SetHighlight('Folded', s:brown, s:bg, 'bold')
call s:SetHighlight('LineNr', s:line_numbers, '', '')
call s:SetHighlight('MatchParen', s:orange, '', 'bold')
call s:SetHighlight('ModeMsg', s:green, '', '')
call s:SetHighlight('MoreMsg', s:green, '', '')
call s:SetHighlight('NonText', s:comments, '', '')
call s:SetHighlight('Normal', s:fg, s:bg, '')
call s:SetHighlight('Pmenu', s:fg, s:selection, '')
call s:SetHighlight('PmenuSel', s:bg, s:dark_green, '')
call s:SetHighlight('PmenuSbar', '', s:selection, '')
call s:SetHighlight('PmenuThumb', '', s:comments, '')
call s:SetHighlight('Question', s:blue, '', '')
call s:SetHighlight('IncSearch', s:white, s:comments, 'none')
call s:SetHighlight('Search', s:white, s:comments, 'none')
call s:SetHighlight('SignColumn', s:fg, s:bg, '')
call s:SetHighlight('SpecialKey', s:comments, '', '')
call s:SetHighlight('SpellCap', s:blue, '', 'undercurl')
call s:SetHighlight('SpellBad', s:red, '', 'undercurl')
call s:SetHighlight('StatusLine', s:fg, s:selection, '')
call s:SetHighlight('StatusLineNC', s:comments, s:selection, '')
call s:SetHighlight('StatusLineTerm', s:bg, s:green, '')
call s:SetHighlight('StatusLineTermNC', s:bg, s:green, '')
call s:SetHighlight('TabLine', s:fg, s:line_numbers, '')
call s:SetHighlight('TabLineFill', s:fg, s:selection, '')
call s:SetHighlight('TabLineSel', s:bg, s:dark_green, '')
call s:SetHighlight('Title', s:green, '', '')
call s:SetHighlight('VertSplit', s:comments, '', '')
call s:SetHighlight('Visual', s:fg, s:selection, '')
call s:SetHighlight('WarningMsg', s:red, '', '')
call s:SetHighlight('WildMenu', s:bg, s:cyan, '')

call s:SetHighlight('Comment', s:comments, '', 'italic')
call s:SetHighlight('Conceal', s:brown, s:bg, '')
call s:SetHighlight('Constant', s:orange, '', '')
call s:SetHighlight('String', s:green, '', '')
call s:SetHighlight('Character', s:green, '', 'italic')
call s:SetHighlight('Identifier', s:red, '', '')
call s:SetHighlight('Function', s:blue, '', '')
call s:SetHighlight('Statement', s:purple, '', 'italic')
call s:SetHighlight('Operator', s:cyan, '', '')
call s:SetHighlight('PreProc', s:cyan, '', 'italic')
call s:SetHighlight('Include', s:blue, '', '')
call s:SetHighlight('Define', s:purple, '', '')
call s:SetHighlight('Macro', s:purple, '', '')
call s:SetHighlight('Type', s:yellow, '', '')
call s:SetHighlight('Structure', s:cyan, '', '')
call s:SetHighlight('Special', s:violet, '', '')
call s:SetHighlight('Underlined', s:blue, '', '')
call s:SetHighlight('Error', s:bg, s:red, '')
call s:SetHighlight('Todo', s:orange, s:bg, 'italic')

" Legacy groups for official git.vim and diff.vim syntax
hi! link diffFile DiffAdd
hi! link diffNewFile DiffDelete
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffLine DiffChange
hi! link diffRemoved DiffDelete

" Git Commit Messages
call s:SetHighlight('gitcommitHeader', s:purple, '', '')
call s:SetHighlight('gitcommitUnmerged', s:green, '', '')
call s:SetHighlight('gitcommitSelectedFile', s:green, '', '')
call s:SetHighlight('gitcommitDiscardedFile', s:red, '', '')
call s:SetHighlight('gitcommitUnmergedFile', s:yellow, '', '')
call s:SetHighlight('gitcommitSelectedType', s:green, '', '')
call s:SetHighlight('gitcommitSummary', s:blue, '', '')
call s:SetHighlight('gitcommitDiscardedType', s:red, '', '')
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile


call s:SetHighlight('LspDiagnosticsVirtualTextError', s:dark_red, '', 'bold,italic')
call s:SetHighlight('LspDiagnosticsVirtualTextWarning', s:dark_orange, '', 'bold,italic')
call s:SetHighlight('LspDiagnosticsVirtualTextInformation', s:dark_blue, '', 'bold,italic')
call s:SetHighlight('LspDiagnosticsVirtualTextHint', s:dark_cyan, '', 'bold,italic')
call s:SetHighlight('LspDiagnosticsDefaultError', s:dark_red, '', '')
call s:SetHighlight('LspDiagnosticsDefaultWarning', s:orange, '', '')
call s:SetHighlight('LspDiagnosticsDefaultInformation', s:blue, '', '')
call s:SetHighlight('LspDiagnosticsDefaultHint', s:cyan, '', '')

" TS (Treesitter) colors

" Misc
call s:SetHighlight('TSError', s:red, '', '')
call s:SetHighlight('TSPunctDelimiter', s:white, '', '')
call s:SetHighlight('TSPunctBracket', s:yellow, '', 'bold')
call s:SetHighlight('TSPunctSpecial', s:yellow, '', 'bold')

" Constants
call s:SetHighlight('TSConstant', s:orange, '', '')
call s:SetHighlight('TSConstBuiltin', s:red, '', 'bold')
call s:SetHighlight('TSConstMacro', s:green, '', '')
call s:SetHighlight('TSString', s:blue, '', '')
call s:SetHighlight('TSStringRegex', s:orange, '', '')
call s:SetHighlight('TSStringEscape', s:orange, '', '')
call s:SetHighlight('TSCharacter', s:orange, '', '')
call s:SetHighlight('TSNumber', s:cyan, '', '')
call s:SetHighlight('TSBoolean', s:cyan, '', '')
call s:SetHighlight('TSFloat', s:cyan, '', '')
call s:SetHighlight('TSAnnotation', s:pink, '', '')
call s:SetHighlight('TSAttribute', s:pink, '', '')
call s:SetHighlight('TSNamespace', s:pink, '', '')


" Functions
call s:SetHighlight('TSFuncBuiltin', s:purple, '', 'bold,italic')
call s:SetHighlight('TSFunction', s:yellow, '', 'bold')
call s:SetHighlight('TSFuncMacro', s:purple, '', '')
call s:SetHighlight('TSParameter', s:orange, '', 'italic')
call s:SetHighlight('TSParameterReference', s:blue, '', '')
call s:SetHighlight('TSMethod', s:light_green, '', 'bold,italic')
call s:SetHighlight('TSField', s:orange, '', 'italic')
call s:SetHighlight('TSProperty', s:yellow, '', 'bold')
call s:SetHighlight('TSConstructor', s:light_red, '', 'bold')

" Keywords
call s:SetHighlight('TSConditional', s:orange, '', 'italic')
call s:SetHighlight('TSRepeat', s:orange, '', 'italic')
call s:SetHighlight('TSLabel', s:green, '', '')
call s:SetHighlight('TSKeyword', s:purple, '', 'italic')
call s:SetHighlight('TSKeywordFunction', s:purple, '', 'italic')
call s:SetHighlight('TSKeywordOperator', s:yellow, '', 'bold')
call s:SetHighlight('TSOperator', s:orange, '', '')
call s:SetHighlight('TSException', s:orange, '', '')
call s:SetHighlight('TSType', s:light_yellow, '', '')
call s:SetHighlight('TSTypeBuiltin', s:blue, '', 'bold')
call s:SetHighlight('TSStructure', s:yellow, '', '')
call s:SetHighlight('TSInclude', s:red, '', 'bold')

" Variable
call s:SetHighlight('TSVariable', s:white, '', '')
call s:SetHighlight('TSVariableBuiltin', s:red, '', 'bold,italic')

" Text
call s:SetHighlight('TSText', s:white, '', '')
call s:SetHighlight('TSStrong', s:white, '', 'bold')
call s:SetHighlight('TSEmphasis', s:white, '', '')
call s:SetHighlight('TSUnderline', s:pink, '', '')
call s:SetHighlight('TSTitle', s:pink, '', '')
call s:SetHighlight('TSLiteral', s:pink, '', '')
call s:SetHighlight('TSURI', s:pink, '', '')

" Tags
call s:SetHighlight('TSTag', s:blue, '', '')
call s:SetHighlight('TSTagDelimiter', s:grey, '', '')


" NvimTree"
call s:SetHighlight('NvimTreeFolderName', s:cyan, '', '')
call s:SetHighlight('NvimTreeRootFolder', s:green, '', '')
call s:SetHighlight('NvimTreeFolderIcon', s:orange, '', '')
call s:SetHighlight('NvimTreeEmptyFolderName', s:grey, '', '')
call s:SetHighlight('NvimTreeOpenedFolderName', s:yellow, '', '')


" Neovim terminal colors
if has('nvim')
  let g:terminal_color_background = s:bg.gui
  let g:terminal_color_foreground = s:fg.gui
  let g:terminal_color_0 = s:comments.gui
  let g:terminal_color_1 = s:red.gui
  let g:terminal_color_2 = s:green.gui
  let g:terminal_color_3 = s:yellow.gui
  let g:terminal_color_4 = s:blue.gui
  let g:terminal_color_5 = s:purple.gui
  let g:terminal_color_6 = s:cyan.gui
  let g:terminal_color_7 = s:white.gui
  let g:terminal_color_8 = g:terminal_color_0
  let g:terminal_color_9 = g:terminal_color_1
  let g:terminal_color_10 = g:terminal_color_2
  let g:terminal_color_11 = g:terminal_color_3
  let g:terminal_color_12 = g:terminal_color_4
  let g:terminal_color_13 = g:terminal_color_5
  let g:terminal_color_14 = g:terminal_color_6
  let g:terminal_color_15 = g:terminal_color_7
endif

