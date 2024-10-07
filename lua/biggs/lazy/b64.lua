return {
    "taybart/b64.nvim",

    config = function()
        local b = require('b64')
        vim.keymap.set({"v"}, "<leader>be", function() b.encode() end, {silent = true})
        vim.keymap.set({"v"}, "<leader>bd", function() b.decode() end, {silent = true})
    end
}
