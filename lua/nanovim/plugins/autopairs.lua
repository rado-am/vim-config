return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = function()
    local npairs = require('nvim-autopairs')
    local Rule = require('nvim-autopairs.rule')
    local ts_conds = require('nvim-autopairs.ts-conds')
    
    npairs.setup({
      enable_check_bracket_line = true,
      check_ts = true,
      ts_config = {
        lua = { "string" },
        javascript = { "string" },
        typescript = { "string" },
      }
    })

    -- Disable autopairs inside strings
    npairs.add_rules({
      Rule("(", ""):with_pair(ts_conds.is_ts_node({'string'})),
      Rule("{", ""):with_pair(ts_conds.is_ts_node({'string'})),
      Rule("[", ""):with_pair(ts_conds.is_ts_node({'string'})),
    })
  end
}
