-- lua/plugins/nvim-treesitter.lua
-- main ブランチ（Neovim 0.12+ 対応の書き直し版）。
-- master ブランチは Nvim 0.11 までで凍結されており、0.12 では
-- markdown の injection クエリでエラーになるため使用しない。
local parsers = {
    "bash",
    "c",
    "cpp",
    "go",
    "javascript",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "rust",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
}

-- treesitter ハイライトを有効にする filetype（言語名とは別物）
local filetypes = {
    "sh",
    "bash",
    "c",
    "cpp",
    "go",
    "javascript",
    "javascriptreact",
    "lua",
    "markdown",
    "python",
    "rust",
    "typescript",
    "typescriptreact",
    "vim",
    "help",
}

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    -- main ブランチは lazy-load 非対応
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install(parsers)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = filetypes,
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
