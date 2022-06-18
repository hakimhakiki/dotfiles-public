lua << EOF

local lspconfig = require('lspconfig')
local protocol = require('vim.lsp.protocol')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    local opts = {noremap = true, silent = true}

    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
end

lspconfig.html.setup{
    on_attach=on_attach,
    capabilities=capabilities,
    filetypes = {"html", "php"}
}
lspconfig.cssls.setup{on_attach=on_attach, capabilities=capabilities}
lspconfig.tsserver.setup{
    on_attach=on_attach,
    capabilities=capabilities,
    filetypes={"javascript", "typescript", "javascript.jsx", "typescript.tsx"},
    root_dir = function() return vim.loop.cwd() end
}

EOF

