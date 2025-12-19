return {
    "Pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup({
            enabled = true,
            trigger_events = { "InsertLeave", "TextChanged" },
            conditions = function(buf)
                local fn = vim.fn
                local utils = require("auto-save.utils.data")

                -- 检查文件是否可修改
                if fn.getbufvar(buf, "&modifiable") == 1 then
                    -- 排除某些文件类型
                    local excluded_filetypes = {
                        "harpoon",
                        "alpha",
                        "dashboard",
                        "NvimTree",
                        "neo-tree",
                        "lazy",
                        "TelescopePrompt",
                        "Outline",
                        "aerial",
                        "floaterm",
                        "terminal",
                        "prompt",
                        "toggleterm",
                        "neo-tree-popup",
                        "neo-tree-preview",
                        "minimap",
                        "packer",
                        "mason",
                        "cmp_docs",
                        "cmp_menu",
                    }

                    local filetype = fn.getbufvar(buf, "&filetype")
                    if not utils.not_in(filetype, excluded_filetypes) then
                        return false
                    end

                    -- 检查文件名不为空
                    if fn.expand("%") == "" then
                        return false
                    end

                    return true
                end
                return false
            end,
            write_all_buffers = false,
            debounce_delay = 1000,
            callbacks = {
                enabling = function() end,
                disabling = function() end,
                before_asserting_save = function()
                    local buf = vim.api.nvim_get_current_buf()
                    local name = vim.api.nvim_buf_get_name(buf)
                    if name == "" then
                        return false
                    end

                    -- 检查是否有未保存的更改
                    if vim.bo.modified then
                        return true
                    end
                    return false
                end,
                after_saving = function() end,
            },
        })

        -- 设置快捷键来切换自动保存
        vim.api.nvim_set_keymap(
            "n",
            "<leader>as",
            "<cmd>ASToggle<CR>",
            { noremap = true, silent = true, desc = "切换自动保存" }
        )
    end,
}
