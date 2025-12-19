{pkgs, ...}: {
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

    transparent.enable = true;
    transparent.autoLoad = true;

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
          highlights = {
            fill = {
              bg = "NONE";
            };
            background = {
              fg = "#6c7086";
              bg = "NONE";
            };
            buffer_visible = {
              fg = "#cdd6f4";
              bg = "NONE";
            };
            buffer_selected = {
              fg = "#cdd6f4";
              bg = "NONE";
              bold = true;
              italic = false;
              underline = true; # Add underline to selected buffer
              sp = "#89b4fa"; # Underline color (special color)
            };
            indicator_selected = {
              fg = "#89b4fa";
              bg = "NONE";
              underline = true;
              sp = "#89b4fa";
            };
            modified = {
              fg = "#f9e2af";
              bg = "NONE";
            };
            modified_visible = {
              fg = "#f9e2af";
              bg = "NONE";
            };
            modified_selected = {
              fg = "#f9e2af";
              bg = "NONE";
              underline = true;
              sp = "#89b4fa";
            };
            separator = {
              fg = "#45475a";
              bg = "NONE";
            };
            separator_selected = {
              fg = "#45475a";
              bg = "NONE";
            };
            separator_visible = {
              fg = "#45475a";
              bg = "NONE";
            };
          };
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
    #    harpoon = {
    #      enable = false;
    #      package = pkgs.vimPlugins.harpoon2;
    #      enableTelescope = true;
    #      autoLoad = true;
    #      settings = {
    #        #save_on_toggle = true;
    #        #sync_on_ui_close = false;
    #      };
    #    };
    avante = {
      enable = true;
      autoLoad = true;
      settings = {
        diff = {
          autojump = true;
          debug = false;
          list_opener = "copen";
        };
        highlights = {
          diff = {
            current = "DiffText";
            incoming = "DiffAdd";
          };
        };
        hints = {
          enabled = true;
        };
        auto_suggestions_provider = "ollama";
        provider = "ollama";
        providers = {
          "ollama" = {
            endpoint = "http://localhost:11434";
            extra_request_body = {
              max_tokens = 4096;
              temperature = 0;
            };
            #model = "gpt-oss:20b";
            model = "qwen3:14b-160k";
          };
        };
        windows = {
          sidebar_header = {
            align = "center";
            rounded = true;
          };
          width = 30;
          wrap = true;
        };
      };
    };
    #luasnip.enable = true;
    neoscroll = {
      enable = true;
      autoLoad = true;
    };
  };
}
