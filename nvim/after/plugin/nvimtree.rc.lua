local status, tree = pcall(require, "nvim-tree")
if( not status ) then
    return
end

tree.setup{
    sort_by = "name",
    view = {
        adaptive_size = false,
        width = 30,
        height = 30,
        preserve_window_proportions = false,
        number = false,
        signcolumn = "yes",
    },
    renderer = {
        add_trailing = true,
        full_name = false,
        indent_markers = {
            enable = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                item = "│ ",
                none = "  ",
            },
        },
    },
}

-- All Mappings Here
vim.api.nvim_buf_set_keymap(0, 'n', 'T', '<cmd>NvimTreeToggle<CR>', {noremap = true})
