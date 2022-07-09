if !exists('g:loaded_nvim_treesitter')
    finish
endif

lua << EOF
local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup{
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = {
        "astro",
        "clojure",
        "cuda",
        "elvish",
        "foam",
        "haskell",
        "ninja",
        "nix",
        "norg",
        "perl",
        "pascal",
        "scala",
        "swift",
        "yang",
        "zig"
    },
    highlight = {
        enable = true,
        disable = {"html", "latex", "php"},
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
        "html",
        "css",
        "javascript",
        "php",
        "vim",
        "latex",
    },
}
EOF
