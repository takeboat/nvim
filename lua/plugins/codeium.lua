-- ~/.config/nvim/lua/plugins/codeium.lua
return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    -- 1. 不让 Tab 被抢占，用 <C-j> 接受
    vim.g.codeium_no_map_tab = 1
    vim.g.codeium_disable_bindings = 1
    -- 2. 键位
    vim.keymap.set("i", "<C-j>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<C-]>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<C-[>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<C-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,
}
