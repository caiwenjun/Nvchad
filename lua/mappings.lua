require "nvchad.mappings"

-- add yours here
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
local map = vim.keymap.set
vim.api.nvim_del_keymap('n', '<leader>b')
vim.api.nvim_del_keymap('n', '<leader>fo')

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n","<leader>to","<cmd>Outline<CR>",{desc = "toogle Outline"})
map("n","<leader>tm","<cmd>MarkdownPreviewToggle<CR>",{desc = "toogle MarkdownPreview"})
map("n","<leader>tc","<cmd>VCoolor<CR>", {desc = "toogle ColorSelector"})
map("n","<leader>ty",function()
  require("yazi").yazi()
  end,{desc = "Open the file manager"})
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "toggle tree window" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find recently files" })
map("n","<leader>cc","<cmd>Neogen<CR>",{desc = "Annotation"})
-- tab
map("n","<C-e>a","<cmd>tabe<CR>",{ desc = "新标签页" })
map("n","<C-e>d","<cmd>tabc<CR>",{ desc = "删除标签页" })
map("n","<C-e>h","<cmd>tabp<CR>",{ desc = "上一个标签页" })
map("n","<C-e>l","<cmd>tabn<CR>",{ desc = "下一个标签页" })
map("n","<C-e>o","<cmd>tabo<CR>",{ desc = "关闭其他标签页" })
--buffer
map("n","<leader>bl","<cmd>bn<CR>",{desc = "next buffer"})
map("n","<leader>bh","<cmd>bp<CR>",{desc = "previous buffer"})
map("n","<leader>bd","<cmd>bd<CR>",{desc = "delete buffer"})
-- window
map("n","<C-w>v","<cmd>vsp")
map("n","<C-w>s","<cmd>sp")
map("n","<C-w>d","<C-w>c")
map("n","<C-w>o","on")
-- 移动行
map("n","<A-j>","<cmd>m-2<CR>",{ desc = "向下移动一行" })
map("n","<A-k>","<cmd>m+1<CR>",{ desc = "向下移动一行" })
