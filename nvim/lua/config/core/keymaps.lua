vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width & height" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- save file
keymap.set("n", "<Leader>w", ":w<CR>", { desc = "save file", noremap = true, silent = true })

-- 定义一个函数来切换焦点
local function toggle_tree_focus()
  local nvim_tree = require("nvim-tree.view")
  local current_winnr = vim.fn.winnr()

  -- 如果 nvim-tree 没有打开，则打开它
  if not nvim_tree.is_visible() then
    vim.cmd("NvimTreeOpen")
    vim.cmd("NvimTreeFocus")
    return
  end

  -- 获取 nvim-tree 窗口编号
  local tree_winnr = vim.fn.bufwinnr("NvimTree_1")

  -- 如果当前在 nvim-tree 窗口，切换到上一个窗口
  if current_winnr == tree_winnr then
    vim.cmd("wincmd p")
  else
    -- 否则，切换到 nvim-tree 窗口
    vim.cmd(string.format("%dwincmd w", tree_winnr))
  end
end

-- 映射 Ctrl+; 快捷键
vim.keymap.set("n", "<C-;>", toggle_tree_focus, { noremap = true, silent = true })
