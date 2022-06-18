if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ;l <cmd>lua require('telescope.builtin').oldfiles()<CR>

lua << EOF
function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

EOF
