local util = {}
local colorful = require('colorful.theme')

-- Go trough the table and highlight the group with the color values
util.highlight = function (group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "colorful"

    -- load base theme
    local editor = colorful.loadEditor()
    local syntax = colorful.loadSyntax()
    local treesitter = colorful.loadTreeSitter()
    local plugins = colorful.loadPlugins()

    for group, colors in pairs(editor) do
        util.highlight(group, colors)
    end

    for group, colors in pairs(syntax) do
        util.highlight(group, colors)
    end

    for group, colors in pairs(treesitter) do
        util.highlight(group, colors)
    end

    for group, colors in pairs(plugins) do
        util.highlight(group, colors)
    end
end

return util
