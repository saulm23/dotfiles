-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Hide bottom/status bar
vim.opt.laststatus = 0
vim.opt.showmode = true

-- Tabs
vim.opt.smartindent = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Pure black & white theme
vim.cmd([[
  highlight Normal guibg=#000000 guifg=#FFFFFF
  highlight CursorLine guibg=#111111
  highlight LineNr guifg=#666666
  highlight CursorLineNr guifg=#FFFFFF gui=bold

  highlight Visual guibg=#222222
  highlight Search guibg=#FFFFFF guifg=#000000

  highlight StatusLine guibg=#000000 guifg=#000000
  highlight VertSplit guifg=#222222
]])
