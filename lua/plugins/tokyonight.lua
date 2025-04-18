return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true }
      }
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
