local status, lspconfig = pcall(require, "lspconfig")
if( not status ) then
    return
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    -- Enable completion
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    local bufopt = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopt)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopt)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopt)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopt)
    vim.keymap.set('n', '<space>r', vim.lsp.buf.references, bufopt)
end

local lsp_flag = {
    debounce_text_changes = 150,
}

local root_dir = function()
  return vim.fn.getcwd()
end

-- Enable the server
lspconfig.pyright.setup{  -- Server for python
    on_attach = on_attach,
    root_dir = root_dir,
    capabilities = capabilities,
    flags = lsp_flag,
}
lspconfig.tsserver.setup{  -- Server for typescript and javascript
    on_attach = on_attach,
    root_dir = root_dir,
    capabilities = capabilities,
    flags = lsp_flag,
    filetypes = {
        "javascript",
        "typescript",
        "javascript.jsx",
        "typescript.tsx",
    },
}
lspconfig.clangd.setup{
    on_attach = on_attach,
    root_dir = root_dir,
    capabilities = capabilities,
    flags = lsp_flag,
}
