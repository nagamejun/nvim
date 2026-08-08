-- lua/plugins/copilot.lua
-- github/copilot.vim の純 Lua 置き換え版。
-- copilot.lua が Copilot との通信・認証を担当し、copilot-cmp が
-- その提案を nvim-cmp のソースへ変換する。
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      -- Copilot は Node.js 22.13 以上を要求するが、mise のグローバル設定は
      -- 22.12.0 のため起動に失敗する。グローバル設定を変えずに済ませるため、
      -- 条件を満たす mise 管理下の node を明示的に指定する。
      local node = vim.fn.expand("~/.local/share/mise/installs/node/22.20.0/bin/node")

      require("copilot").setup({
        copilot_node_command = vim.fn.executable(node) == 1 and node or "node",
        -- copilot-cmp 使用時は suggestion/panel を無効化する（公式推奨）。
        -- 有効なままだとゴーストテキストと補完メニューで提案が二重に出る。
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },

  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
