return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
     ,gggg,                                     ,ggg,         ,gg                                 
   ,88"""Y8b, ,dPYb,                           dP""Y8a       ,8P                                  
  d8"     `Y8 IP'`Yb                           Yb, `88       d8'                                 Z
 d8'   8b  d8 I8  8I                            `"  88       88  gg                               
,8I    "Y88P' I8  8'                                88       88  ""                           z   
I8'           I8 dPgg,     ,gggg,gg   ,ggg,,ggg,    I8       8I  gg    ,ggg,,ggg,,ggg,      z     
d8            I8dP" "8I   dP"  "Y8I  ,8" "8P" "8,   `8,     ,8'  88   ,8" "8P" "8P" "8,           
Y8,           I8P    I8  i8'    ,8I  I8   8I   8I    Y8,   ,8P   88   I8   8I   8I   8I           
`Yba,,_____, ,d8     I8,,d8,   ,d8b,,dP   8I   Yb,    Yb,_,dP  _,88,_,dP   8I   8I   Yb,          
  `"Y8888888 88P     `Y8P"Y8888P"`Y88P'   8I   `Y8     "Y8P"   8P""Y88P'   8I   8I   `Y8          
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
