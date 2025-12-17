-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 确保全局透明背景生效
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- 设置全局透明背景
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", fg = "#45475a" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", fg = "#45475a" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", fg = "#45475a" })

    -- nvim-tree透明背景
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE", fg = "#45475a" })
    vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE", fg = "#45475a" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE", fg = "#45475a" })
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#313244" })
    vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { bg = "NONE" })
  end,
})
vim.env.BROWSER = "chrome.exe"
vim.o.cursorline = false
