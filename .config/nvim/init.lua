vim.cmd("set clipboard=wl-clipboard");
vim.cmd("set number");

-- source: https://vi.stackexchange.com/questions/31811/neovim-lua-config-how-to-append-to-listchars
vim.opt.listchars = { space = '•', tab = '>~', eol = '↵' }
vim.opt.list = true
