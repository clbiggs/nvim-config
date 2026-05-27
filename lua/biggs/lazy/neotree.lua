return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
        local t = require('neo-tree')
        vim.keymap.set({"v","n","i"}, "<C-b>", '<Cmd>Neotree toggle<CR>')
        t.setup({
            source_selector = {
                truncation_character = "…",
            -- statusline = true,
            	winbar = true,
            	sources = {
                    {
                      source = "filesystem",
                      display_name = " 󰉓 Files "
                    },
                    {
                      source = "buffers",
                      display_name = " 󰈚 Buffers "
                    },
                    {
                      source = "git_status",
                      display_name = " 󰊢 Git "
                    },
                    {
                      source = "document_symbols",
                      display_name = "  Code "
                    },
            	},
            	content_layout = "center",
            	highlight_tab = "NeoTreeTabInactive", -- string
            	highlight_tab_active = "NeoTreeTabActive", -- string
            	highlight_background = "NeoTreeTabInactive", -- string
            	highlight_separator = "ActiveWindow", -- string
            	highlight_separator_active = "NeoTreeTabSeparatorActive", -- string
            },
            sources = {
                "filesystem",
                "buffers",
                "git_status",
                "document_symbols",
            },
            filesystem = {
                commands = {
                    avante_add_files = function(state)
                        local node = state.tree:get_node()
                        local filepath = node:get_id()
                        local relative_path = require('avante.utils').relative_path(filepath)

                        local sidebar = require('avante').get()

                        local open = sidebar:is_open()
                        -- ensure avante sidebar is open
                        if not open then
                            require('avante.api').ask()
                            sidebar = require('avante').get()
                        end

                        sidebar.file_selector:add_selected_file(relative_path)

                        -- remove neo tree buffer
                        if not open then
                            sidebar.file_selector:remove_selected_file('neo-tree filesystem [1]')
                        end
                    end,
                },
                window = {
                    mappings={
                        ['oa'] = 'avante_add_files',
                    },
                },
            },
        })
    end
}
