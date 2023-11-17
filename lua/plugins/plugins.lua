local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- require('packer').init({
--    git = {
--        default_url_format = 'git@github.com:%s'
--    }
-- })

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- 主题颜色
  use "folke/tokyonight.nvim"
  -- 下面状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true } -- 文档图标库
  }
  -- 左侧栏
  use {
      "nvim-tree/nvim-tree.lua", -- 文档树
      requires = {
        "nvim-tree/nvim-web-devicons" -- 图标
      }
  }
  use 'christoomey/vim-tmux-navigator' -- 改键切换tab
  use 'nvim-treesitter/nvim-treesitter' -- 语法高亮
  use 'p00f/nvim-ts-rainbow' -- 括号颜色区分
  use 'windwp/nvim-autopairs' -- 括号引号补全
  use {
    "williamboman/mason.nvim", -- LSP和mason
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/nvim-lsp-installer"
  }
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets 引擎，不安装这个自动补全出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径
  use "akinsho/bufferline.nvim" -- 文件缓冲-上面已打开文件列
  use 'nvim-tree/nvim-web-devicons' -- 文件图标
  use 'fatih/vim-go' -- go的相关插件 测试等

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    -- 'numToStr/Comment.nvim', -- 自动注释
    'preservim/nerdcommenter' -- 另外一个注释插件
  }
  use 'ethanholz/nvim-lastplace' -- 记住上次文件打开的位置
  -- use 'JoosepAlviste/nvim-ts-context-commentstring' -- 注释代码扩展其他语言

  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
