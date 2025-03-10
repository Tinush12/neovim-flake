{...}: {
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        nixd.enable = true;
        #nil_ls.enable = true;
        clangd.enable = true;
        bashls.enable = true;
        #pylsp = {
        #  enable = true;
        #  settings.plugins = {
        #    black.enabled = true;
        #    flake8.enabled = true;
        #    isort.enabled = true;
        #    jedi.enabled = true;
        #    mccabe.enabled = true;
        #    pycodestyle.enabled = true;
        #    pydocstyle.enabled = true;
        #    pyflakes.enabled = true;
        #    pylint.enabled = true;
        #    rope.enabled = true;
        #    yapf.enabled = true;
        #  };
        #};
      };

      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };

    cmp = {
      enable = true;
      settings = {
        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };
        autoEnableSources = true;
        performance = {debounce = 150;};
        sources = [
          {name = "path";}
          {
            name = "nvim_lsp";
            keywordLength = 1;
          }
          {
            name = "buffer";
            keywordLength = 3;
          }
        ];

        format = ''
          function(entry, item)
            local menu_icon = {
              nvim_lsp = '[LSP]',
              luasnip = '[SNIP]',
              buffer = '[BUF]',
              path = '[PATH]',
            }

            item.menu = menu_icon[entry.source.name]
            return item
          end
        '';

        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
            zindex = 1001;
            scrolloff = 0;
            colOffset = 0;
            sidePadding = 1;
            scrollbar = true;
          };
          documentation = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
            zindex = 1001;
            maxHeight = 20;
          };
        };
      };
    };

    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;

    lsp-format = {
      enable = true;
      lspServersToEnable = [
        "nixd"
      ];
    };
    none-ls = {
      enable = true;
      enableLspFormat = false;
      sources.formatting = {
        alejandra.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
      };
      sources.diagnostics = {
        yamllint.enable = true;
      };
    };

    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = "fallback";
          timeout_ms = 500;
        };
        notify_on_error = true;

        formatters_by_ft = {
          css = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          lua = ["stylua"];
          markdown = ["prettier"];
          nix = ["alejandra"];
          yaml = ["yamlfmt"];
          cpp = ["clangd"];
        };
      };
    };
  };
}
