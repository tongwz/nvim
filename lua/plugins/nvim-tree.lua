-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- 已经配置过了 vim.opt.termguicolors = true


-- empty setup using defaults
require("nvim-tree").setup(
  {
    -- 关闭文件时自动关闭
    auto_close = true,
    view = {
      width = 35,
    },
  }
)

