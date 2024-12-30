return {
  -- nvim-cmpのメインプラグイン
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",      -- LSPからの補完
      "hrsh7th/cmp-buffer",        -- バッファからの補完
      "hrsh7th/cmp-path",          -- ファイルパスからの補完
      "hrsh7th/cmp-cmdline",       -- コマンドラインからの補完
      "hrsh7th/cmp-nvim-lua",      -- nvim-cmpのLua補完
      "saadparwaiz1/cmp_luasnip",  -- LuaSnipからの補完
      "L3MON4D3/LuaSnip",          -- スニペット取得およびスニペット展開後の編集制御をする
      "f3fora/cmp-spell",          -- スペルチェック
      "onsails/lspkind.nvim",      -- 補完候補の種類を表示
      "rafamadriz/friendly-snippets", -- スニペット集
      "zbirenbaum/copilot-cmp",    -- Copilotからの補完
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- LuaSnipを使用してスニペットを展開
          end,
        },
        mapping = {
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Enterキーで選択を確定
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
          { name = 'path' },
        })
      })

      -- コマンドライン用の設定
      cmp.setup.cmdline('/', {
        sources = {
          { name = 'buffer' }
        }
      })

      cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })
    end
  }
}

