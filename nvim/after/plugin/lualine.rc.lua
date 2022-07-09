local status, lualine = pcall(require, "lualine")
if (not status) then
    return
end

-- make gruvbox colorscheme look legit
local colors = {
	black = '#282828',
    grey = '#928374',
	red = '#cc241d',
	green = '#98971a',
	yellow = '#d79921',
	blue = '#458588',
	magenta = '#b16286',
	cyan = '#689d6a',
	white = '#a89984',
}

local theme = {
    normal = {
        a = { fg = colors.black, bg = colors.white, gui='bold' },
        b = { fg = colors.black, bg = colors.green },
        c = { fg = colors.grey, bg = colors.black },
        z = { fg = colors.black, bg = colors.cyan },
    },
    insert = {
        a = { fg = colors.black, bg = colors.blue, gui='bold' },
        z = { fg = colors.black, bg = colors.cyan },
    },
    visual = { 
        a = { fg = colors.black, bg = colors.yellow, gui='bold'},
        z = { fg = colors.black, bg = colors.cyan },
    },
    command = {
        a = { fg = colors.black, bg = colors.magenta, gui='bold'},
        z = { fg = colors.black, bg = colors.cyan },
    },
}

require('lualine').setup{
    options = {
        icons_enabled = true,
        theme = theme,
        component_separators = {left='', right=''},
        section_separators = {left='', right=''},
        globalstatus = true,
        disabled_filetypes = {'xml'},
    },
    sections = { -- icon for mode ' '
        lualine_a = {{"mode", fmt= function(str) return ' ' end}},
        lualine_b = {
            {'filename',
                file_status = true,
                path = 0,
                symbols = {
                    modified = '*',
                    readonly = '!',
                    unnamed = '?',
                }
            },
        },
        lualine_c = {
            'branch',
            'diff', 
        },
        lualine_x = {
            {'diagnostics',
                sources = {'nvim_lsp'},
                sections = {'error', 'warn', 'info'},
                symbols = {error = ' ', warn = ' ', info = ' ',},
                colored = true,
                always_visible = true,
            },
        },
        lualine_y = {{'filetype', colored = false}},
        lualine_z = {'%p%% %l:%c'},
    },
}
