return {
  -- plenary.nvim (telescope.nvimの依存)
  {
    "nvim-lua/plenary.nvim"
  },

  -- telescope.nvim
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "airblade/vim-rooter" },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      telescope.setup{
        defaults = {
	  file_ignore_patterns = { "node_modules", "generated" },
          mappings = {
            n = {
              ["<esc>"] = actions.close,
            },
            i = {
              ["<esc>"] = actions.close,
              ["<C-a>"] = actions.send_to_qflist + actions.open_qflist,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            }
          }
        }
      }
    end
  },

  -- sqlite.lua (telescope-frecencyの依存)
  {
    "tami5/sqlite.lua"
  },

  -- telescope-frecency.nvim
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension("frecency")
      vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Telescope frecency<cr>', { noremap = true, silent = true })
    end
  }
}

