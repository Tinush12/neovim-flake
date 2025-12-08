{...}: {
  plugins = {
    hop.enable = true;

    treesitter = {
      enable = true;
      folding = false;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
    };
    bufferline = {
      # Tab line a the Top
      enable = true;
      settings = {
        options = {
          always_show_bufferline = true;
          separator_style = "slope"; #slant or "slope", "thick", "thin"
          indicator = {
            icon = "▎";
            style = "icon";
          };
          diagnostics = "nvim_lsp";
          mode = "buffers";

          close_icon = " ";
          buffer_close_icon = "󰱝 ";
          modified_icon = "󰔯 ";

          offsets = [
            {
              highlight = "Directory";
              text_align = "left";
            }
          ];
        };
      };
    };

    lualine = {
      # Status line at the Bottom
      enable = true;
      settings = {
        options = {
          globalstatus = true;
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
          extensions = [
            "fzf"
          ];
          disabledFiletypes = {
            statusline = [
              "alpha"
            ];
          };
        };
        sections = {
          lualine_a = [
            {
              __unkeyed-1 = "mode";
              icon = "";
            }
          ];
          lualine_b = [
            {
              __unkeyed-1 = "branch";
              icon = "";
            }
            {
              __unkeyed-1 = "diff";
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
            }
          ];
          lualine_c = [
            {
              __unkeyed-1 = "diagnostics";
              sources = ["nvim_lsp"];
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = "󰝶 ";
              };
            }
            {
              __unkeyed-1 = "navic";
            }
          ];
          lualine_x = [
            {
              __unkeyed-1 = "filetype";
              icon_only = true;
              separator = "";
              padding = {
                left = 1;
                right = 0;
              };
            }
            {
              __unkeyed-1 = "filename";
              path = 1;
            }
          ];
          lualine_y = [
            {
              __unkeyed-1 = "progress";
            }
          ];
          lualine_z = [
            {
              __unkeyed-1 = "location";
            }
          ];
        };
      };
    };

    mini = {
      # Library of 40+ Plugins for neovim
      enable = true;
      modules = {
        indentscope = {
          symbol = "│";
          options = {try_as_border = true;};
        };
      };
    };
    web-devicons.enable = true;

    which-key.enable = true; # Info for Keybinds
    nvim-autopairs.enable = true;
    illuminate.enable = true;
    #noice.enable = true;
    trouble = {enable = true;};

    alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [
            "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
            "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ];

          opts = {
            position = "center";
            hl = "Type";
          };
        }
        {
          type = "padding";
          val = 4;
        }
      ];
    };
    harpoon = {
      enable = true;
      #enableTelescope = true;
      autoLoad = true;
      #settings = {
      #  save_on_toggle = true;
      #  sync_on_ui_close = false;
      #};
    };

    #luasnip.enable = true;
    neoscroll = {
      enable = true;
      autoLoad = true;
    };
  };
}
