return {
    "mfussenegger/nvim-dap",
    config = function ()
        local d = require('dap')
        vim.keymap.set({"n"}, "<leader>da", function() d.continue() end, {desc = "Continue", noremap = true})
        vim.keymap.set({"n"}, "<leader>de", function() d.run_to_cursor() end, {desc = "Run to cursor", noremap = true})
        vim.keymap.set({"n"}, "<leader>dd", function() d.step_over() end, {desc = "Step over", noremap = true})
        vim.keymap.set({"n"}, "<leader>df", function() d.step_into() end, {desc = "Step into", noremap = true})
        vim.keymap.set({"n"}, "<leader>dg", function() d.step_out() end, {desc = "Step out", noremap = true})
        vim.keymap.set({"n"}, "<leader>dr", function() d.restart() end, {desc = "Restart", noremap = true})
        vim.keymap.set({"n"}, "<leader>ds", function() d.pause() end, {desc = "Pause", noremap = true})
        vim.keymap.set({"n"}, "<leader>dv", function() d.toggle_breakpoint() end, {desc = "Toggle breakpoint", noremap = true})
        vim.keymap.set({"n"}, "<leader>dt", function() d.terminate() end, {desc = "Terminate", noremap = true})
    end

}
