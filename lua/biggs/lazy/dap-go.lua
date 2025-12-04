return {
    "leoluz/nvim-dap-go",
    dependencies = { 'mfussenegger/nvim-dap' },
    config = function()
        local dap_go = require('dap-go')
        dap_go.setup({

        })
    end
}
