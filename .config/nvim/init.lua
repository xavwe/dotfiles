vim.cmd("set clipboard=wl-clipboard");
vim.cmd("set number");
vim.cmd("set expandtab");
vim.cmd("set tabstop=2");
vim.cmd("set softtabstop=2");
vim.cmd("set shiftwidth=2");

-- source: https://vi.stackexchange.com/questions/31811/neovim-lua-config-how-to-append-to-listchars
vim.opt.listchars = { space = '•', tab = '>~', eol = '↵' }
vim.opt.list = true
