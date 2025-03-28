return {
    "brianhuster/live-preview.nvim",
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        lp = require('livepreview.config')

        lp.set({
            port = 5051
        })

        vim.keymap.set("n", "<leader>lp", function() vim.cmd.LivePreview("start") end)
        vim.keymap.set("n", "<leader>lc", function() vim.cmd.LivePreview("pick") end)
        vim.keymap.set("n", "<leader>ls", function() vim.cmd.LivePreview("close") end)
    end
}
