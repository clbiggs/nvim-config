return {
    "nicholasmata/nvim-dap-cs",
    dependencies = { 'mfussenegger/nvim-dap' },
    config = function ()
        require('dap-cs').setup({
            netcoredbg = {
                path = "~/.local/bin/netcoredbg/netcoredbg"
            }
        })
    end
}
