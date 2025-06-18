return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function ()
        require('lazydev').setup({
            library = { "nvim-dap-ui" },
        })
        local ui = require('dapui')
        ui.setup()
        vim.keymap.set({"n"}, "<leader>du", function() ui.toggle() end, {desc = "Toggle debug ui", noremap = true})
    end

}
