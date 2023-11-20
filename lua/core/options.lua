local opt = vim.opt

-- 行号
opt.number = true
vim.opt.relativenumber = true -- 这个是相对行号，可以进行多行选中方便看行数
vim.opt.numberwidth = 4 -- 行号宽度

-- 打开nvim不需要备份文件 这里可以方便关闭文件 这样不会有swap文件影响关闭
vim.opt.backup = false
vim.opt.showtabline = 2 -- 显示两行行号

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 光标行
opt.cursorline = true

-- 搜索
opt.ignorecase = true
-- 智能开启忽略大小写
opt.smartcase = true

-- 禁用鼠标

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右 和 下
opt.splitright = true
opt.splitbelow = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
opt.guifont = "JetBrainsMonoNerdFontMono-Regular" -- 选择字体

local cmdX = vim.cmd
-- 颜色外观
cmdX[[colorscheme tokyonight-moon]]

-- 默认注释加一个空格
vim.g.NERDSpaceDelims = 1

-- vim.opt.shell = 'pwsh' -- checkhealth查看nvim的健康状况的时候 提示 ：ERROR pwsh: not available 情况测试能行不
-- vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
-- vim.opt.shellxquote = ''
-- 设置剪贴板管理器为xclip
-- vim.g.clipboard = {
--   name = 'xsel',
--   copy = {
--     ['+'] = 'xsel -selection clipboard',
--     ['*'] = 'xsel -selection clipboard',
--   },
--   paste = {
--     ['+'] = 'xsel -selection clipboard -o',
--     ['*'] = 'xsel -selection clipboard -o',
--   },
--   cache_enabled = 0,
-- }

