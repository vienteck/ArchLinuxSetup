require("dap-go").setup()
require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")




vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<F5>", "<cmd>DapContinue<CR>")
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", {desc = "Start Debugger"})
vim.keymap.set("n", "<F10>", "<cmd>DapStepOver<CR>")
vim.keymap.set("n", "<F11>", "<cmd>DapStepInto<CR>")
vim.keymap.set("n", "<F12>", "<cmd>DapStepOut<CR>")
vim.keymap.set("n", "<F1>", "<cmd>DapTerminate<CR>")
vim.keymap.set("n", "<leader>dd", "<cmd>DapTerminate<CR>", {desc = "Kill Debugger"})
