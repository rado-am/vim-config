return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = function()
    local Rule = require('nvim-autopairs.rule')
    local npairs = require('nvim-autopairs')
    
    npairs.setup({
      enable_check_bracket_line = true,
      check_ts = true,
      ts_config = {
        lua = { "string" },
        javascript = { "template_string", "string" },
        typescript = { "template_string", "string" },
      }
    })
  end
}
