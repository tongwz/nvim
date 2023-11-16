vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ----------
keymap.set("i", "jk", "<Esc>")


-- ---------- 视觉模式 ----------
-- 单行或者多行移动代码 1向下移动 2向上移动
keymap.set("v", "1", ":m '>+1<CR>gv=gv")
keymap.set("v", "2", ":m '<-2<CR>gv=gv")
-- 快速到达行尾
keymap.set("v", "<leader>e", "$")

-- 设置 j 和 k 的多格移动
keymap.set("v", "J", "5j")
keymap.set("v", "K", "5k")


-- ---------- 正常模式 ----------
-- 快速关闭一个窗口
keymap.set("n", "<leader>q", ":q<CR>")

keymap.set("n", "]", ":nohlsearch<CR>") -- 取消高亮
-- 快速到达行尾
keymap.set("n", "<leader>e", "$")

-- 设置 j 和 k 的多格移动
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")

-- 文档树 改键
keymap.set("n", "<F9>", ":NvimTreeToggle<CR>")

-- 在bufferline中切换文件
keymap.set("n", "<leader>h", ":bprevious<CR>")
keymap.set("n", "<leader>l", ":bnext<CR>")

-- 窗口多开
keymap.set("n", "<leader>s", ":belowright split<CR>") -- 水平新增窗口
keymap.set("n", "<leader>v", ":vertical belowright split<CR>") -- 垂直新增窗口

-- 关闭buffer 页签
keymap.set("n", "<leader>c", ":BufferLinePickClose<CR>") -- 关闭当前标签但是需要再选择需要关闭的
keymap.set("n", "<leader>cl", ":BufferLineCloseRight<CR>") -- 关闭当前标签右边的所有标签

-- 设置跳转到定义处的快捷键
vim.api.nvim_set_keymap('n', '<leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
-- 设置查找引用的快捷键
vim.api.nvim_set_keymap('n', '<leader>gr', '<Cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
-- 设置跳转到实现处的快捷键
vim.api.nvim_set_keymap('n', '<leader>gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })

-- 关闭vim-go的K的GoDoc查看方法文档的键盘映射
vim.g.go_doc_keywordprg_enabled = 0

