-- キーマップ
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')

-- 移動
vim.keymap.set('n', '<S-l>', '$')
vim.keymap.set('n', '<S-h>', '^')

vim.keymap.set('n', '<leader>sv', '<C-w>v') -- ウィンドウを垂直方向に分割する
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- ウィンドウを水平に分割する
vim.keymap.set('n', '<leader>se', '<C-w>=') -- ウィンドウの幅を等分にする
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- 現在、カーソルがいるウィンドウを閉じる
vim.keymap.set('n', '<leader>sw', '<C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>>') -- ウィンドウの幅を少し広げる
vim.keymap.set('n', '<leader>sww', '<C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>><C-w>>') -- ウィンドウの幅を大きく広げる
vim.keymap.set('n', '<leader>st', '<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><') -- ウィンドウの幅を少し狭める
vim.keymap.set('n', '<leader>stt', '<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><<C-w><') -- ウィンドウの幅を大きく狭める

-- タブを作成、削除
vim.keymap.set('n', '<leader>to', ':tabnew<CR>')
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>')
vim.keymap.set('n', '<leader>tn', ':tabn<CR>')
vim.keymap.set('n', '<leader>tp', ':tabp<CR>')
-- ウィンドウを移動する
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
-- 単語を' " どちらかで囲う
vim.keymap.set('n', '<leader>aw', 'ciw""<Esc>P')
vim.keymap.set('n', '<leader>aW', "ciw''<Esc>P")

-- キーマッピング
vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-g>', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-p>', '<cmd>lua require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-g>', '<cmd>lua require("telescope.builtin").live_grep({ cwd = vim.fn.expand("%:p:h") })<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>lr', '<cmd>Telescope lsp_references<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>j', '<Plug>(jumpcursor-jump)', { noremap = false, silent = true })

