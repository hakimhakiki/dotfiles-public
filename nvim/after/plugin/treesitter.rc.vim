if !exists('g:loaded_nvim_treesitter') | finish | endif

lua << EOF

local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup{
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "python",
        "lua",
        "fish",
        "c",
        "css",
        "javascript",
        "php",
        "vim",
    },
}
EOF
