-- ~/.config/nvim/lua/plugins/codeium.lua
return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    -- 禁用默认的 Codeium Tab 键绑定
    vim.g.codeium_no_map_tab = 1

    -- 延迟设置 Tab 键，确保在 blink.cmp 之后
    vim.defer_fn(function()
      vim.keymap.set("i", "<Tab>", function()
        -- 检查是否有可见的 LSP 补全菜单
        local ok, blink_cmp = pcall(require, "blink.cmp")
        if ok and blink_cmp.is_visible() then
          -- 如果有 LSP 菜单，让 blink.cmp 处理 Tab 键
          -- 这里返回空字符串，让 blink.cmp 的默认映射生效
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
          return ""
        end

        -- 检查 snippet
        local ok_luasnip, luasnip = pcall(require, "luasnip")
        if ok_luasnip and luasnip.jumpable(1) then
          return luasnip.jump(1)
        end

        -- 只有在没有 LSP 菜单时，才尝试接受 Codeium
        local status = vim.fn["codeium#GetStatusString"]()
        if status ~= nil and status ~= "" then
          local result = vim.fn["codeium#Accept"]()
          if result ~= "" then
            return result
          end
        end

        -- 最后 fallback 到默认 Tab
        return "\t"
      end, { expr = true, silent = true, desc = "Smart Tab: LSP > Codeium > Snippet > Tab" })
    end, 200)

    -- 可选的辅助键位
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
