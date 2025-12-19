return {
  -- 为 blink.cmp 配置补全，VSCode 风格的 Tab 行为
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- 保持默认的 sources，不包含 Codeium
      -- Codeium 由我们自定义逻辑处理

      -- VSCode 风格：Tab 选择并接受第一个建议（如果还没有选中任何建议）
      opts.keymap = {
        ["<Tab>"] = { "select_and_accept", "snippet_forward", "fallback" },
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