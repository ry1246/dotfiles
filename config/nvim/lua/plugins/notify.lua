return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss all Notifications",
    },
    {
      "<leader>nh",
      function()
        require("telescope").extensions.notify.notify()
      end,
      desc = "Show Notification History",
    },
  },
  opts = {
    timeout = 5000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    stages = "fade_in_slide_out",
    level = vim.log.levels.DEBUG,
  },
}
