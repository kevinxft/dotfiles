return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = false,
    },
    views = {
      cmdline_popup = { -- 命令行弹窗
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
      },
      popupmenu = { -- 弹出菜单
        relative = "editor",
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 60,
          height = 10,
        },
      },
      hover = {
        anchor = "C",
        position = {
          row = "50%",
          col = "50%",
        },
        relative = "editor",
      },
      popup = {
        anchor = "C",
        position = {
          row = "50%",
          col = "50%",
        },
        relative = "editor",
      },
    }
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
