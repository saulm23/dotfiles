-- Hide bottom/status bar
vim.opt.laststatus = 3
vim.opt.showmode = false

-- Tabs
vim.opt.smartindent = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- ==========================
-- BLACK & WHITE COLOR SCHEME
-- ==========================

-- Reset all highlighting
vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "blackwhite"

-- Main editor
vim.api.nvim_set_hl(0, "Normal", {
  fg = "#FFFFFF",
  bg = "#000000",
})

vim.api.nvim_set_hl(0, "NormalFloat", {
  fg = "#FFFFFF",
  bg = "#000000",
})

-- Cursor line
vim.api.nvim_set_hl(0, "CursorLine", {
  bg = "#111111",
})

-- Line numbers
vim.api.nvim_set_hl(0, "LineNr", {
  fg = "#666666",
  bg = "#000000",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
  fg = "#FFFFFF",
  bg = "#000000",
  bold = true,
})

-- Sign column
vim.api.nvim_set_hl(0, "SignColumn", {
  fg = "#FFFFFF",
  bg = "#000000",
})

-- Cursor
vim.api.nvim_set_hl(0, "Cursor", {
  fg = "#000000",
  bg = "#FFFFFF",
})

-- Search
vim.api.nvim_set_hl(0, "Search", {
  fg = "#000000",
  bg = "#FFFFFF",
})

vim.api.nvim_set_hl(0, "IncSearch", {
  fg = "#000000",
  bg = "#FFFFFF",
  bold = true,
})

-- Visual selection
vim.api.nvim_set_hl(0, "Visual", {
  fg = "#000000",
  bg = "#FFFFFF",
})

-- Popup menus
vim.api.nvim_set_hl(0, "Pmenu", {
  fg = "#FFFFFF",
  bg = "#111111",
})

vim.api.nvim_set_hl(0, "PmenuSel", {
  fg = "#000000",
  bg = "#FFFFFF",
})

-- Messages
vim.api.nvim_set_hl(0, "ErrorMsg", {
  fg = "#FFFFFF",
  bg = "#000000",
  bold = true,
})

vim.api.nvim_set_hl(0, "WarningMsg", {
  fg = "#FFFFFF",
  bg = "#000000",
  bold = true,
})

-- ==========================
-- SYNTAX
-- ==========================

local syntax_groups = {
  "Comment",
  "Constant",
  "String",
  "Character",
  "Number",
  "Boolean",
  "Float",
  "Identifier",
  "Function",
  "Statement",
  "Conditional",
  "Repeat",
  "Label",
  "Operator",
  "Keyword",
  "Exception",
  "PreProc",
  "Include",
  "Define",
  "Macro",
  "PreCondit",
  "Type",
  "StorageClass",
  "Structure",
  "Typedef",
  "Special",
  "SpecialChar",
  "Tag",
  "Delimiter",
  "Debug",
  "Underlined",
  "Ignore",
  "Error",
  "Todo",
}

for _, group in ipairs(syntax_groups) do
  vim.api.nvim_set_hl(0, group, {
    fg = "#FFFFFF",
    bg = "#000000",
  })
end

-- Comments slightly dimmer
vim.api.nvim_set_hl(0, "Comment", {
  fg = "#777777",
  bg = "#000000",
  italic = true,
})

-- TODO / errors remain black and white
vim.api.nvim_set_hl(0, "Todo", {
  fg = "#000000",
  bg = "#FFFFFF",
  bold = true,
})

