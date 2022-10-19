local options = {
    backup = false,
    -- clipboard = "unnamedplus",
    expandtab = true,
    guicursor = "",
    hlsearch = true,
    ignorecase = true,
    incsearch = true,
    mouse = "a",
    number = true,
    shiftwidth = 4,
    smartcase = true,
    smartindent = true,
    softtabstop = 4,
    tabstop = 4,
    wrap = false,
    scrolloff = 8,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
