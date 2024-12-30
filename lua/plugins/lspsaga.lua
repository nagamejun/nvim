return {
  {
    "glepnir/lspsaga.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- アイコンを使用する場合
    config = function()
      local saga = require('lspsaga')

      saga.setup({
        -- ここに必要な設定を追加
	lightbulb = {
	  enable = false,
	},
	implement = {
	  enable = false,
	},
	outline = {
	  enable = false,
	},
	extend_gitsigns = ture,
	  finder = {
            max_height = 0.7,
            left_width = 0.3,
            right_width = 0.6,
            keys = {
              shuttle = "<Space>w",
              toggle_or_open = "<CR>"
            }
          },
      })

      -- キーマッピングの例
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
      vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
      vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
      vim.keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', opts)
      vim.keymap.set('n', '<M-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
      vim.keymap.set('n', '<M-k>', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
    end
  }
}

