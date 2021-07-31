local colors = require('colorful.colors')

local theme = {}

theme.loadSyntax = function ()
  local syntax = {
    Type                = { fg = colors.yellow },
		StorageClass        = { fg = colors.cyan }, -- static, register, volatile, etc.
    Structure           = { fg = colors.cyan },
    Constant            = { fg = colors.orange },
    Character           = { fg = colors.green, style = 'italic'},
		Number              = { fg = colors.orange },
		Boolean             = { fg = colors.orange },
		Float               = { fg = colors.orange },
    Statement           = { fg = colors.purple, style = 'italic'},
		Label               = { fg = colors.cyan },
		Operator            = { fg = colors.cyan }, -- sizeof", "+", "*", etc.

		Exception           = { fg = colors.orange }, -- try, catch, throw
		PreProc             = { fg = colors.cyan, style = 'italic' }, -- generic Preprocessor
		Include             = { fg = colors.blue }, -- preprocessor #include
		Define              = { fg = colors.purple }, -- preprocessor #define
		Macro               = { fg = colors.purple }, -- same as Define
		Typedef             = { fg = colors.red }, -- A typedef
		PreCondit           = { fg = colors.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special             = { fg = colors.violet }, -- any special symbol
		SpecialChar         = { fg = colors.yellow }, -- special character in a constant
		Tag                 = { fg = colors.blue }, -- you can use CTRL-] on this
		Delimiter           = { fg = colors.cyan }, -- character that needs attention like , or .
		SpecialComment      = { fg = colors.gray }, -- special things inside a comment
		Debug               = { fg = colors.red }, -- debugging statements
		Underlined          = { fg = colors.pink, bg = colors.none, style = 'underline' }, -- text that stands out, HTML links

		Ignore              = { fg = colors.gray }, -- left blank, hidden
		Error               = { fg = colors.error, bg = colors.none, style = 'bold,underline' }, -- any erroneous construct
		Todo                = { fg = colors.yellow, bg = colors.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		htmlLink            = { fg = colors.cyan, style = 'underline' },
		htmlH1              = { fg = colors.cyan, style = 'bold' },
		htmlH2              = { fg = colors.red, style = 'bold' },
		htmlH3              = { fg = colors.green, style = 'bold' },
		htmlH4              = { fg = colors.yellow, style = 'bold' },
		htmlH5              = { fg = colors.purple, style = 'bold' },
		markdownH1          = { fg = colors.cyan, style = 'bold' },
		markdownH2          = { fg = colors.red, style = 'bold' },
		markdownH3          = { fg = colors.green, style = 'bold' },
		markdownH1Delimiter = { fg = colors.cyan },
		markdownH2Delimiter = { fg = colors.red },
		markdownH3Delimiter = { fg = colors.green },
	}

  return syntax
end

theme.loadEditor = function ()
  local editor = {
    ColorColumn      = { bg = colors.invisibles },
    Cursor           = { fg = colors.bg, bg = colors.caret },
    CursorColumn     = { bg = colors.line_highlight },
    CursorLine       = { bg = colors.line_highlight },
    CursorLineNr     = { fg = colors.yellow },
    Directory        = { fg = colors.blue },

    gitDiffAdd       = { fg = colors.green, bg = colors.bg },
    gitDiffDelete    = { fg = colors.red, bg = colors.bg },
    gitDiffChange    = { fg = colors.yellow, bg = colors.bg },

    DiffAdd          = { fg = colors.bg, bg = colors.dark_green },
    DiffDelete       = { fg = colors.fg, bg = colors.dark_red },
    DiffChange       = { fg = colors.bg, bg = colors.dark_orange },
    DiffText         = { fg = colors.bg, bg = colors.orange },

    ErrorMsg         = { fg = colors.bg, bg = colors.red, style = 'bold'},
    FoldColumn       = { fg = colors.line_numbers, bg = colors.bg },
    Folded           = { fg = colors.brown, bg = colors.bg, style = 'bold'},
    LineNr           = { fg = colors.line_numbers },
    MatchParen       = { fg = colors.orange, style = 'bold'},
    ModeMsg          = { fg = colors.green },
    MoreMsg          = { fg = colors.green },
    NonText          = { fg = colors.comments },
    Normal           = { fg = colors.fg, bg = colors.bg },
    Pmenu            = { fg = colors.fg, bg = colors.selection },
    PmenuSel         = { fg = colors.pmenusel_fg, bg = colors.pmenusel_bg },
    PmenuSbar        = { bg = colors.selection },
    PmenuThumb       = { bg = colors.comments },
    Question         = { fg = colors.blue },
    IncSearch        = { fg = colors.white, bg = colors.red, style = 'none'},
    Search           = { fg = colors.white, bg = colors.red, style = 'none'},
    SignColumn       = { fg = colors.fg, bg = colors.bg },
    SpecialKey       = { fg = colors.comments },
    SpellCap         = { fg = colors.blue, style = 'undercurl'},
    SpellBad         = { fg = colors.red, style = 'undercurl'},
    StatusLine       = { fg = colors.fg, bg = colors.selection },
    StatusLineNC     = { fg = colors.comments, bg = colors.selection },
    StatusLineTerm   = { fg = colors.bg, bg = colors.green },
    StatusLineTermNC = { fg = colors.bg, bg = colors.green },
    TabLine          = { fg = colors.fg, bg = colors.line_numbers },
    TabLineFill      = { fg = colors.fg, bg = colors.selection },
    TabLineSel       = { fg = colors.bg, bg = colors.dark_green },
    Title            = { fg = colors.green },
    VertSplit        = { fg = colors.comments },
    Visual           = { fg = colors.fg, bg = colors.selection },
    WarningMsg       = { fg = colors.red },
    WildMenu         = { fg = colors.bg, bg = colors.cyan },

    NormalFloat      = { fg = colors.fg, bg = colors.bg }, -- normal text and background color for floating windows
		Conceal          = { fg = colors.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		CursorIM         = { fg = colors.cursor, bg = colors.none, style = 'reverse' }, -- like Cursor, but used when in IME mode

		QuickFixLine     = { fg = colors.highlight, bg = colors.title, style = 'reverse' }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr         = { fg = colors.highlight, bg = colors.title, style = 'reverse' }, -- Line numbers for quickfix lists
		SpellLocal       = { fg = colors.cyan, bg = colors.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare        = { fg = colors.purple, bg = colors.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		TablineSel       = { fg = colors.bg, bg = colors.accent }, -- tab pages line, active tab page label
		Tabline          = { fg = colors.fg },
		VisualNOS        = { fg = colors.none, bg = colors.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		Whitespace       = { fg = colors.fg }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- ToolbarLine   = { fg = colors.fg, bg = colors.bg_alt },
		-- ToolbarButton = { fg = colors.fg, bg = colors.none, style = 'bold' },
    --
		NormalMode       = { fg = colors.accent, bg = colors.none, style = 'reverse' }, -- Normal mode message in the cmdline
		InsertMode       = { fg = colors.green, bg = colors.none, style = 'reverse' }, -- Insert mode message in the cmdline
		ReplacelMode     = { fg = colors.red, bg = colors.none, style = 'reverse' }, -- Replace mode message in the cmdline
		VisualMode       = { fg = colors.purple, bg = colors.none, style = 'reverse' }, -- Visual mode message in the cmdline
		CommandMode      = { fg = colors.gray, bg = colors.none, style = 'reverse' }, -- Command mode message in the cmdline
		Warnings         = { fg = colors.orange },
  }

  return editor
end

theme.loadTreesitter = function()
  local treesitter = {
    TSError = { fg = colors.red },
    TSPunctDelimiter = { fg = colors.fg },
    TSPunctBracket = { fg = colors.yellow, style = 'bold' },
    TSPunctSpecial = { fg = colors.yellow, style = 'bold' },

    TSConstant = { fg = colors.orange },
    TSConstBuiltin = { fg = colors.red, style = 'bold' },
    TSConstMacro = { fg = colors.green },
    TSString = { fg = colors.green },
    TSStringRegex = { fg = colors.orange },
    TSStringEscape = { fg = colors.orange },
    TSCharacter = { fg = colors.orange },
    TSNumber = { fg = colors.cyan },
    TSBoolean = { fg = colors.cyan },
    TSFloat = { fg = colors.orange },
    TSAnnotation = { fg = colors.yellow },
    TSAttribute = { fg = colors.yellow },
    TSNamespace = { fg = colors.yellow },

    TSFuncBuiltin = { fg = colors.purple, style = 'bold,italic' },
    TSFunction = { fg = colors.yellow, style = 'bold' },
    TSFuncMacro = { fg = colors.purple },
    TSParameter = { fg = colors.blue, style = 'italic' },
    TSParameterReference = { fg = colors.blue },
    TSMethod = { fg = colors.light_green, style = 'bold,italic' },
    TSField = { fg = colors.orange, style = 'italic' },
    TSProperty = { fg = colors.pink, style = 'bold' },
    TSConstructor = { fg = colors.light_red, style = 'bold' },

    TSConditional = { fg = colors.purple, style = 'italic' },
    TSRepeat = { fg = colors.purple, style = 'italic' },
    TSLabel = { fg = colors.green },
    TSKeyword = { fg = colors.purple, style = 'italic' },
    TSKeywordFunction = { fg = colors.purple, style = 'italic' },
    TSKeywordOperator = { fg = colors.yellow, style = 'bold' },
    TSOperator = { fg = colors.lime },
    TSException = { fg = colors.orange },
    TSType = { fg = colors.light_yellow },
    TSTypeBuiltin = { fg = colors.blue, style = 'bold' },
    TSStructure = { fg = colors.yellow },
    TSInclude = { fg = colors.red, style = 'bold' },

    TSVariable = { fg = colors.fg },
    TSVariableBuiltin = { fg = colors.red, style = 'bold,italic' },

    TSText = { fg = colors.fg },
    TSStrong = { fg = colors.fg, style = 'bold' },
    TSEmphasis = { fg = colors.fg },
    TSUnderline = { fg = colors.pink },
    TSTitle = { fg = colors.pink },
    TSLiteral = { fg = colors.pink },
    TSURI = { fg = colors.pink },

    TSTag = { fg = colors.blue },
    TSTagDelimiter = { fg = colors.grey },
   }

  return treesitter

end


theme.loadPlugins = function ()
  local plugins = {
    LspDiagnosticsVirtualTextError = { fg = colors.dark_red, style = 'bold,italic' },
    LspDiagnosticsVirtualTextWarning = { fg = colors.dark_orange, style = 'bold,italic' },
    LspDiagnosticsVirtualTextInformation = { fg = colors.dark_blue, style = 'bold,italic' },
    LspDiagnosticsVirtualTextHint = { fg = colors.dark_cyan, style = 'bold,italic' },
    LspDiagnosticsDefaultError = { fg = colors.dark_red },
    LspDiagnosticsDefaultWarning = { fg = colors.orange },
    LspDiagnosticsDefaultInformation = { fg = colors.blue },
    LspDiagnosticsDefaultHint = { fg = colors.cyan },

    gitcommitHeader = { fg = colors.purple },
    gitcommitUnmerged = { fg = colors.green },
    gitcommitSelectedFile = { fg = colors.green },
    gitcommitDiscardedFile = { fg = colors.red },
    gitcommitUnmergedFile = { fg = colors.yellow },
    gitcommitSelectedArrow = { fg = colors.green },
    gitcommitDiscardedArrow = { fg = colors.red },
    gitcommitUnmergedArrow = { fg = colors.yellow },
    gitcommitSelectedType = { fg = colors.green },
    gitcommitSummary = { fg = colors.blue },
    gitcommitDiscardedType = { fg = colors.red },
    gitDiffAdd = { fg = colors.green, bg = colors.bg },
    gitDiffDelete = { fg = colors.red, bg = colors.bg },
    gitDiffChange = { fg = colors.yellow, bg = colors.bg },


    NvimTreeNormal = { bg = colors.black },
    NvimTreeFolderName = { fg = colors.cyan },
    NvimTreeRootFolder = { fg = colors.green },
    NvimTreeFolderIcon = { fg = colors.orange },
    NvimTreeEmptyFolderName = { fg = colors.grey },
    NvimTreeOpenedFolderName = { fg = colors.yellow },
  }

  return plugins
end

return theme
