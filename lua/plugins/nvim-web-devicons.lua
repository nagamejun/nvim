return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require('nvim-web-devicons').setup({
        override = {
          ts = {
            icon = '',
            color = '#3178C6'
          }
        }
      })
    end
  }
}

