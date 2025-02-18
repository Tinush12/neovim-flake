{
  lib,
  pkgs,
  ...
}: {
  extraPackages = with pkgs; [
    coreutils
    lldb_18
    vscode-extensions.vadimcn.vscode-lldb
  ];

  plugins.dap = {
    enable = true;
    #adapters = {
    #  executables = {
    #    lldb = {
    #      command = lib.getExe' pkgs.lldb "lldb-vscode";
    #    };
    #  };
    #  servers = {
    #    codelldb = {
    #      port = 13000;
    #      executable = {
    #        command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
    #        args = [
    #          "--port"
    #          "13000"
    #        ];
    #      };
    #    };
    #  };
    #};

    extensions = {
      # Creates a beautiful debugger UI
      dap-ui = {
        enable = true;
        icons = {
          expanded = "▾";
          collapsed = "▸";
          current_frame = "*";
        };

        controls = {
          icons = {
            pause = "⏸";
            play = "▶";
            step_into = "⏎";
            step_over = "⏭";
            step_out = "⏮";
            step_back = "b";
            run_last = "▶▶";
            terminate = "⏹";
            disconnect = "⏏";
          };
        };
      };
    };
  };

  # Add your own debuggers here
  #plugins.dap-python.enable = true;
  plugins.dap-lldb = {
    enable = true;
    settings = {
      codelldb_path = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
      configurations = {
        cpp = [
          {
            cwd = "$\${workspaceFolder}";
            name = "Debug";
            program = {
              __raw = ''
                function()
                   local cwd = string.format("%s%s", vim.fn.getcwd(), sep)
                   return vim.fn.input("Path to executable: ", cwd, "file")
                end
              '';
            };
            request = "launch";
            stopOnEntry = false;
            type = "lldb";
          }
          {
            args = {
              __raw = ''
                function()
                   local args = vim.fn.input("Enter args: ")
                   return vim.split(args, " ", { trimempty = true })
                end
              '';
            };
            cwd = "$\${workspaceFolder}";
            name = "Debug (+args)";
            program = {
              __raw = ''
                function()
                   local cwd = string.format("%s%s", vim.fn.getcwd(), sep)
                   return vim.fn.input("Path to executable: ", cwd, "file")
                end
              '';
            };
            request = "launch";
            stopOnEntry = false;
            type = "lldb";
          }
          {
            cwd = "$\${workspaceFolder}";
            name = "Attach debugger";
            program = {
              __raw = ''
                function()
                   local cwd = string.format("%s%s", vim.fn.getcwd(), sep)
                   return vim.fn.input("Path to executable: ", cwd, "file")
                end
              '';
            };
            request = "attach";
            stopOnEntry = false;
            type = "lldb";
          }
        ];
      };
    };
  };

  # https://nix-community.github.io/nixvim/keymaps/index.html
  keymaps = [
    {
      mode = "n";
      key = "<leader>Dc";
      action.__raw = ''
        function()
          require('dap').continue()
        end
      '';
      options = {
        desc = "Debug: Start/Continue";
      };
    }
    {
      mode = "n";
      key = "<F1>";
      action.__raw = ''
        function()
          require('dap').step_into()
        end
      '';
      options = {
        desc = "Debug: Step Into";
      };
    }
    {
      mode = "n";
      key = "<F2>";
      action.__raw = ''
        function()
          require('dap').step_over()
        end
      '';
      options = {
        desc = "Debug: Step Over";
      };
    }
    {
      mode = "n";
      key = "<F3>";
      action.__raw = ''
        function()
          require('dap').step_out()
        end
      '';
      options = {
        desc = "Debug: Step Out";
      };
    }
    {
      mode = "n";
      key = "<leader>b";
      action.__raw = ''
        function()
          require('dap').toggle_breakpoint()
        end
      '';
      options = {
        desc = "Debug: Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>B";
      action.__raw = ''
        function()
          require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end
      '';
      options = {
        desc = "Debug: Set Breakpoint";
      };
    }
    # Toggle to see last session result. Without this, you can't see session output
    # in case of unhandled exception.
    {
      mode = "n";
      key = "<leader>Du";
      action.__raw = ''
        function()
          require('dapui').toggle()
        end
      '';
      options = {
        desc = "Debug: See last session result.";
      };
    }
  ];

  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraconfiglua#extraconfiglua
  extraConfigLua = ''
    require('dap').listeners.after.event_initialized['dapui_config'] = require('dapui').open
    require('dap').listeners.before.event_terminated['dapui_config'] = require('dapui').close
    require('dap').listeners.before.event_exited['dapui_config'] = require('dapui').close
  '';
}
