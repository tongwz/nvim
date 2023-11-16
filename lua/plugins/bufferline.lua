vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
        --使用nvim内置lsp
        diagnostics = "nvim_lsp",
        -- 坐车让出nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File_Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
