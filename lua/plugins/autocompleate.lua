return {
  -- 为 blink.cmp 配置 Tab 补全 (LazyVim 默认使用 blink.cmp)
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- VSCode 风格：Tab 直接确认选中的建议
      opts.keymap = {
        ["<Tab>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_and_accept()
            end
          end,
          "snippet_forward",
          "fallback"
        },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "cancel", "fallback" },
        ["<C-n>"] = { "select_next", "fallback_to_mappings" },
        ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
      }

      return opts
    end,
  },

  -- 配置 LuaSnip
  {
    "L3MON4D3/LuaSnip",
    opts = {
      -- 保持默认的 LuaSnip 配置
    },
  },
}