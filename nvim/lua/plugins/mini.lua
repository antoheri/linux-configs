return {
    {
        'echasnovski/mini.nvim',
        config = function()
            -- Status line
            local statusline = require 'mini.statusline'
            statusline.setup{ use_icons = false }

            -- Git
            local git = require 'mini.git'
            git.setup()
        end
    }
}
